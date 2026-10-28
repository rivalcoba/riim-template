

= Resultados y discusión
== Primeros resultados
De acuerdo con lo observado en la @fig1 odio facilisis mauris sit amet massa vitae tortor condimentum. Ut porttitor leo a diam. En la @fig2 ac felis donec et odio pellentesque diam volutpat commodo.

#figure(
  image("/src/img/fig1.png", width: 8.8cm),
  caption: [Sed cras ornare arcu dui vivamus arcu felis bibendum. Et leo duis ut diam quam.],
) <fig1>
#align(center, text(size: 9pt)[Tomado/Adaptado de @cao2005])

#figure(
  image("/src/img/fig2.png", width: 8.8cm),
  caption: [Sed lectus vestibulum mattis ullamcorper. Tomado/Adaptado de @reverchon2007],
) <fig2>

== Segundos resultados
De acuerdo con lo mostrado en la @fig2 faucibus et molestie ac feugiat. Risus commodo viverra maecenas accumsan lacus vel. Diam in arcu cursus euismod.

== Últimos resultados
La @tab1 plantea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Gravida quis blandit turpis cursus in hac.

#figure(
  caption: [Eu ultrices vitae auctor eu augue ut. Etiam erat velit scelerisque in dictum non consectetur a. Tomado/Adaptado de @reverchon2004.],
  kind: table,
  {
    set text(size: 9pt)
    table(
      columns: 6 * (1fr,),
      align: center + horizon,
      stroke: (x, y) => (top: 0.5pt, bottom: 0.5pt),
      inset: 4pt,
      [Espesor final. capa densa [μm]], [$R_(O_2) = P_(O_2) slash L$ \ [GPU]], [$R_(N_2) = P_(N_2) slash L$ \ [GPU]],
      [$P_(O_2)$ \ [Barrer]], [$P_(N_2)$ \ [Barrer]], [Selectividad \ O#sub[2]/N#sub[2]],
      [51.13], [0.0253], [0.00497], [1.293], [0.254], [5.28],
      [43.72], [0.0276], [0.00528], [1.207], [0.23], [5.23],
      [40.57], [0.0332], [0.00653], [1.347], [0.265], [5.08],
      [38.58], [0.0359], [0.00654], [1.385], [0.252], [5.49],
      [35.05], [0.0381], [0.00741], [1.335], [0.259], [5.15],
      [31.08], [0.0419], [0.0075], [1.302], [0.233], [5.59],
      [26.16], [0.0532], [0.00987], [1.391], [0.258], [5.39],
    )
  },
) <tab1>
