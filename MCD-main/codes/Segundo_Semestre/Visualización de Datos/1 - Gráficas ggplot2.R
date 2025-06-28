# install.packages("datos")
# install.packages("ggplot2")
library(datos)
library(ggplot2)


# Gráfica de Barras Base
ggplot(data = diamantes, mapping = aes(x = corte)) +
  geom_bar()

# Gráfica de Barras Base - Alternativo
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))

# Gráfica de Barras Base - Alternativo
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = corte))

# Gráfica de Barras Proporción
ggplot(data = diamantes, mapping = aes(x = corte, y = stat(prop), group = 1)) +
  geom_bar()

# Gráfica de Barras Incluyendo etiquetas
ggplot(data = diamantes, mapping = aes(x = corte, y = stat(prop), group = 1)) +
  geom_bar() +
  ggtitle("Cortes de diamantes")

# Diagrama de Puntos
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()

# Diagrama de Puntos
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point()


# Ejemplo diagrama de barras del libro de Claus O. Wilkwe
# Datos
# URL: https://www.boxofficemojo.com/weekend/2017W51/

Office <- data.frame(
  rank = 1:5,
  Titulo = c(
    "Star Wars: Episode VIII - The Last Jedi",
    "Jumanji: Welcome to the Jungle",
    "Pitch Perfect 3",
    "The Greatest Showman",
    "Ferdinand"
  ),
  Cantidad = c(
    71565498,
    36169328,
    19928525,
    8805843,
    7316746
  )
)

# Diagrama de barras sin color de relleno
ggplot(Office, aes(x=Titulo, y=Cantidad)) +
  geom_bar(stat = "identity") +
  ggtitle("Diagrama de barras")


# Diagrama de barras con fill dentro de la estética de mapeo
ggplot(Office, aes(x=Titulo, y=Cantidad, fill = Titulo)) + # Al incluirlo en la estética como parámetro se agrega la leyenda
  geom_bar(stat = "identity") +
  ggtitle("Diagrama de barras")

# Para cambiar el color y fijarlo, se hace fuera de la estética del mapeo
ggplot(Office, aes(x=Titulo, y=Cantidad, fill = Titulo)) +
  geom_bar(stat = "identity", fill = '#56B4E9') +
  ggtitle("Diagrama de barras")

# Ordenar la gráfica por la métrica
ggplot(Office, aes(x=reorder(Titulo, -Cantidad), y=Cantidad, fill = Titulo)) + #Orden descendente
  geom_bar(stat = "identity", fill = '#56B4E9') +
  ggtitle("Diagrama de barras") +
  labs(y = "Cantidad", x = "Titulo")

# Cambiar el ancho de las barras y la intensidad
ggplot(Office, aes(x=reorder(Titulo, -Cantidad), y=Cantidad, fill = Titulo)) + #Orden descendente
  geom_bar(stat = "identity", fill = '#56B4E9', width = 0.6, alpha = 0.6) +
  ggtitle("Diagrama de barras") +
  labs(y = "Cantidad", x = "Titulo")

# Rotar el nombre de los títulos cierto ángulo
ggplot(Office, aes(x=reorder(Titulo, -Cantidad), y=Cantidad, fill = Titulo)) + #Orden descendente
  geom_bar(stat = "identity", fill = '#56B4E9', width = 0.6, alpha = 0.6) +
  theme(axis.text.x = element_text(angle=90)) +
  ggtitle("Diagrama de barras") +
  labs(y = "Cantidad", x = "Titulo")

# Cambiar los ejes
ggplot(Office, aes(y=reorder(Titulo, Cantidad), x=Cantidad, fill = Titulo)) + #Orden descendente
  geom_bar(stat = "identity", fill = '#56B4E9', width = 0.6, alpha = 0.6) +
  theme(axis.text.x = element_text(angle=90)) +
  ggtitle("Diagrama de barras") +
  labs(x = "Cantidad", y = "Titulo")



# Diagrama de Barras Apilado
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = claridad))

# En caso que no se desee apilar la gráfica tenemos 3 opciones:
# Identity
ggplot(data = diamantes, mapping = aes(x = corte, fill = claridad)) +
  geom_bar( position = 'identity') # Se superponen

ggplot(data = diamantes, mapping = aes(x = corte, color = claridad)) +
  geom_bar(fill = NA, position = 'identity')

# Fill
ggplot(data = diamantes, mapping = aes(x = corte, fill = claridad)) +
  geom_bar( position = 'fill') # Las toma en una escala del 100%, cuanto de cada clase corresponde en el total

# Dodge
ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = claridad), position = 'dodge')


####### Diagrama de dispersión
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  ggtitle("Diagrama de dispersión") +
  labs(x = 'Cilindrada', y = 'Autopista')

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y=autopista)) +
  ggtitle("Diagrama de dispersión") +
  labs(x = 'Cilindrada', y = 'Autopista')

# Para resaltar algunos atípicos
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point() +
  geom_point( data = dplyr::filter(millas, cilindrada > 5, autopista > 20), color = 'red', size = 1.5) +
  geom_point( data = dplyr::filter(millas, cilindrada < 2, autopista > 40), color = 'red', size = 1.5) +
  ggtitle("Diagrama de dispersión") +
  labs(x = 'Cilindrada', y = 'Autopista')


######### COLOR
# Cambiar color de los puntos en la gráfica (Añadir a la capa)
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(color='green') +
  ggtitle("Diagrama de dispersión") +
  labs(x = 'Cilindrada', y = 'Autopista')

#Si se agrega el color dentro del mapping (Añadir a la estética), esto genera un agrupado
ggplot(data = millas, mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(aes(color='blue')) +
  ggtitle("Diagrama de dispersión") +
  labs(x = 'Cilindrada', y = 'Autopista')

  