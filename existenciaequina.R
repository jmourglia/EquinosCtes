
datos<-read.csv("existenciaequinasegunSENASA.csv", header = T, sep=";")


#ggplot(data=datos, aes(x=NOMBRE, y=FPM)) + geom_bar(stat="identity", position="stack")

#ggplot(data=df, aes(x=NOMBRE, y=ECO+FPM, fill=ECO)) + geom_bar(stat="identity")

library("billboarder")

# data
#data("datos")

# dodge bar chart !
billboarder() %>%
  bb_barchart(
    data = datos[, c("DEP", "CANTIDAD2017", "CANTIDAD2016", "CANTIDAD2015")]
  ) %>%
  bb_data(
    names = list(CANTIDAD2017 = "2017", CANTIDAD2016 = "2016", CANTIDAD2015="2015")
  ) %>% 
  bb_colors_manual(
    "ECO" = "#41AB5D", "FPM" = "#4292C6"
  ) %>%
  bb_y_grid(show = TRUE) %>%
  bb_y_axis(tick = list(format = suffix("Padrillos")),
            label = list(text = "Cantidad de votos", position = "outer-top")) %>% 
  bb_legend(position = "inset", inset = list(anchor = "top-right")) %>% 
  bb_labs(title = "Comparacion Existencia Equina por Departamento - 
                 Subsecretaria de Tecnologia-Gob de Corrientes")
caption = "Fuente: SENASA

library("ggplot2")

GraficoCultivos = 
    ggplot(subset(Datos, AÑO=="2017"), 
       aes(x=reorder(DEP, y=CANTIDAD, fill=DEP)) +
    geom_bar(stat="identity") +
    theme_bw() +
    labs(title="Existencia Equina por Departamento",
         x="Departamento",
         y="Cantidada (padrillos)") +
    theme(text = element_text(size=12), # Tamaño de fuente del gráfico por defecto
          plot.title = element_text(size=rel(2), # Tamaño del título, doble del establecido por defecto
                                    vjust=2, #Justificación vertical, para separarlo del gráfico
                                    face="bold", #Letra negrilla
                                    color="darkgreen", #Color del texto
                                    lineheight=1.5), #Separación entre líneas)
          axis.text.x = element_text(angle = 45, hjust = 1),
          legend.position="none",
          axis.title.x = element_text(face="bold", vjust=1.5, colour="darkgreen", size=rel(1.5)),
          axis.title.y = element_text(face="bold", vjust=1.5, colour="darkgreen", size=rel(1.5)),
          axis.text = element_text(colour = "black")) +
    coord_cartesian(ylim=c(0, 3)) +
    scale_y_continuous(breaks =seq(0, 3, 0.5))

GraficoCultivos


