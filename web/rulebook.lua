-- web/rulebook.lua — Pandoc filter for the core rulebook web edition.
--
-- 1. columns(1)[WEBBOX:kind ...] from web/common.typ  ->  <div class="rb-kind">
-- 2. Other columns() wrappers are print layout          ->  unwrapped
-- 3. Tables whose header row Pandoc missed              ->  first row becomes <thead>

local function take_marker(div)
  local first = div.content[1]
  if not (first and first.t == "Para" and first.content[1] and first.content[1].t == "Str") then
    return nil
  end
  local kind = first.content[1].text:match("^WEBBOX:([%w-]+)$")
  if not kind then return nil end
  first.content:remove(1)
  while first.content[1] and (first.content[1].t == "Space" or first.content[1].t == "SoftBreak") do
    first.content:remove(1)
  end
  if #first.content == 0 then div.content:remove(1) end
  return kind
end

function Div(div)
  if div.classes:includes("columns-flow") then
    local kind = take_marker(div)
    if kind then return pandoc.Div(div.content, {class = "rb-" .. kind}) end
    return div.content
  end
end

function Table(t)
  if #t.head.rows == 0 and t.bodies[1] and #t.bodies[1].body > 1 then
    t.head.rows = {table.remove(t.bodies[1].body, 1)}
  end
  return t
end

-- 4. Heading anchors: the Typst reader doesn't add ids, so make stable,
--    unique ones ("6.2 Running-Dry Statuses" -> "6-2-running-dry-statuses").
local used = {}
function Header(h)
  if h.identifier == "" then
    local base = pandoc.utils.stringify(h.content):lower()
    base = base:gsub("[^%w]+", "-"):gsub("^-+", ""):gsub("-+$", "")
    if base == "" then base = "section" end
    if base:match("^%d") then base = "s-" .. base end
    local id, n = base, 1
    while used[id] do n = n + 1; id = base .. "-" .. n end
    used[id] = true
    h.identifier = id
  else
    used[h.identifier] = true
  end
  return h
end
