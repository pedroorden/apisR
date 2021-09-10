library(plumber)
library(dplyr)
library(rpart)

#* @apiTitle Model del titanic
#* @apiDescription  Este api nos servira para predecir 
#* si un pasajero del titanic sobrevive o no
fit <- readRDS("modelo_final.rds")
#* @param  Pclass clase en la que viajaba el pasajero
#* @param Sex sexo del pasajero
#* @param Age edad del pasajero
#* @param SibSp numero de hermanos
#* @param Parch numero de parientes
#* @param Fare precio de boleto
#* @param Embarked puerto de embarque
#* @post /titanic
function(Pclass, Sex, Age, SibSp, Parch, Fare, Embarked){
  features <- data_frame(Pclass=as.integer(Pclass),
                         Sex,
                         Age=as.integer(Age),
                         SibSp= as.integer(SibSp),
                         Parch=as.integer(Parch),
                         Fare=as.integer(Fare),
                         Embarked) 
   out <- predict (fit, features, type= "class")
  as.character(out)}