#* @apiTitle api demo
#* @apiDescription en este api estarán los endpoints ejemplo de este repo

#* eco del input
#* @param msg El mensaje que se repite
#* @get /echo

function(msg=""){
  list(paste0("el mensaje es ", msg))
}

#* plot hist
#* @serializer png
#* @get /plot

function(){
  rand <- rnorm(100)
  hist(rand)
}

#* suma de dos parametros
#* @param a el primer número
#* @param b el segundo número
#* @post /sum 

function(a, b){
  
  a <- as.numeric(a)
  
  b <- as.numeric(b)
  
  list(a=a,
       b=b,
       output=a+b)
  
}

#* ejemplo serializacion csv
#* @serializer csv
#* @param n numeros de filas
#* @get /data

function(n=10){
  
  head(mtcars, as.numeric(n))
   
}
