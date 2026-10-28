#import "/src/data.typ": *

#let azul = rgb("#003D7C")
#let fuente = ("Montserrat", "Liberation Sans", "DejaVu Sans")

#set document(title: titulo, author: autores.map(a => a.nombre))
#set page(
  paper: "us-letter",
  margin: (top: 3.5cm, bottom: 2.25cm, x: 2cm),
  header-ascent: 0.5cm,
  footer-descent: 0.5cm,
  header: grid(
    columns: (1fr, 1fr),
    align: (left + horizon, right + horizon),
    image("/src/img/riim_logo.png", height: 1.4cm),
    text(font: "Arial", size: 8pt)[RIIM, Vol #volumen, Num #numero, #anio],
  ),
  footer: {
    align(center, context counter(page).display())
    v(-0.2em)
    text(size: 9pt)[ISSN 3122-4806 #h(1fr) http://orizaba.tecnm.mx/revistaojs]
  },
)
#set text(font: fuente, size: 10pt, lang: "es", region: "MX")
#set par(justify: true, leading: 0.65em, spacing: 8pt)

#show heading.where(level: 1): it => {
  set text(font: fuente, size: 12pt, weight: "semibold", fill: azul)
  set par(justify: false)
  block(above: 8pt + 8pt, below: 8pt, sticky: true, it.body)
}
#show heading.where(level: 2): it => {
  set text(font: fuente, size: 11pt, weight: "semibold", style: "italic")
  set par(justify: false)
  block(above: 8pt + 8pt, below: 8pt, sticky: true, it.body)
}

#show figure.caption: it => {
  set text(size: 9pt)
  set par(justify: false)
  align(center)[*#it.supplement #context it.counter.display(it.numbering).* #it.body]
}
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: table): set figure(supplement: "Tabla")
#show figure.where(kind: image): set figure(supplement: "Figura")

#set bibliography(style: "ieee", title: none)
#show bibliography: set text(size: 9pt)
#show bibliography: set par(justify: true)

// Bloque de título, autores y área
#block(width: 100%, stroke: (bottom: 3pt + azul), inset: (bottom: 8pt), below: 12pt)[
  #align(center)[
    #set text(hyphenate: false)
    #set par(justify: false)
    #block(above: 6pt, below: 18pt, text(font: fuente, weight: "semibold", size: 16pt, tracking: -0.5pt, upper(titulo)))
    #set text(size: 9pt)
    #emph(autores.enumerate().map(((i, a)) => [#a.nombre#super[#(i + 1)#if i == 0 [\*]]]).join(", "))
    \
    #emph(autores.enumerate().map(((i, a)) => [#super[#(i + 1)]#a.institucion y #a.correo]).join(", "))
    \
    #v(8pt)
    Área de participación: #area
  ]
]

#include "/src/sections/00-resumen.typ"
#include "/src/sections/01-introduccion.typ"
#include "/src/sections/02-metodologia.typ"
#include "/src/sections/03-resultados.typ"
#include "/src/sections/04-conclusiones.typ"
#include "/src/sections/05-agradecimientos.typ"

= Referencias
#bibliography("/src/refs.bib")
