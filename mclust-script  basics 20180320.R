#Luis Gerardo Calderon Contreras
#DR. Carlos Cuevas Covarubias
#11/ene/2018 CIEMA
#Algoritmo Algoritmo de esperanza-maximización (EM) en R

#Para instalar el paquete 
#install.packages("mclust")
#Utilizar paquete
library(mclust)
data(iris)
datos <- iris[,-5]  # Eliminanos los nombres de las especies  

#Aplicacion de EM a los datos, modelo optimo segun BIC 
modelo <- Mclust(datos)

table(iris$Species)
# La tabla nos muestra la división realizada (2 clases)
table(modelo$classification, iris$Species)

# Hay 3 tipos más de gráficos
plot(modelo, what="classification")

# Predicción de un valor
nuevo <- data.frame(Petal.Width=1, Petal.Length=1,Sepal.Length=1,Sepal.Width=1)
predict(model,new=nuevo)
