// web/adversaries-common.typ — web-edition stand-in for
// docs/2d12System/adversaries-common.typ (see web/common.typ).
// Keep the statblock signature in step with the print version.
#let statblock(name, line, threat, body) = columns(1)[WEBBOX:statblock #strong(name) · Threat #threat \ #emph(line) \ #body]
