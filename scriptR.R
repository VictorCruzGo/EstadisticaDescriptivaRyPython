#tidyverse, una familia de paquetes para importar, manipular, exportar y visualizar datos.
install.packages("tidyverse",dep=TRUE)
library(tidyverse)


#Paquete para la creación de cuadriculas, hipercubos. Incluye una variedad de funciones para la manipulación y análisis de array dimensionales.
install.packages("magic",dep=TRUE)
library(magic)


#cuadrado mágico, sumando cada lado da igual la misma suma
magic(6)
#Los paquetes de una sesión a otra hay que volver a cargar


#Conocer los paquetes instalados
installed.packages()


#R como calculadora
# se puede utilizar R como calculadora para +,-,*,/,%/% (cociente entero), %% (modulo)
2*((3+5)/2)
2^3

#Algoritmo de ecluides (dividendo=divisor*cociente+resto)
#D = d*q+r
pi
2*pi  #tau


#Números infinitos
Inf 
-Inf


#NA, valor desconocido
#NaN, not a number, no existe ningun numero para representar
5/0  #Inf
0/0  #NaN
2^50  #1.1259e+15 = 1125900000000000 (correr la coma hacia la derecha)
2^(-15)  #3.051758e-05 = 0.000000003051758 (corres la coma hacia la izquierda) #El exponente negativo indica cuantas veces dividir por el numero (exponente negativo)


#Funciones y Combinatoria
sqrt(9)
log(exp(1))
log(1000,10) #Logaritmo en base 10
log(pi) #Logaritmo neperiano de pi
abs(-pi) #valor absoluto
factorial(5) #n*(n-1). No existe el factorial de números negativos. Factorial de 0 y 1 es 1.
choose(5,3) #Combinatoria 'nCm'. Ordenar n elementos tomados de m. Si tuviera 5 platos y quisiera comer 3, lo haría de 10 formas.
choose(6,2)


#Funciones trigonométricas
#sin, cos, tan, asin, acos, atan. El resultado es en radianes. Para convertir a sexagesimal dividir entre 180.
cos(60*pi/180)
sinpi(1/2)  # sin(pi/2)
tan(pi)


#Función para realizar operaciones básicas entre 2 números.
operacionesBasicas= function(a,b){
  print("Suma de a + b")
  print(a+b)
  print("Resta de a - b")
  print(a-b)
  print("Division de a - b")
  print(a*b)
  print("Cociente de a / b")
  print(a%/%b)
  print("Resto de a / b")
  print(a%%b)
}

operacionesBasicas(5,10)

#Números complejos
class (3 + 2i)
(3+2i)*5
(3+2i)*(-1+3i)
(3+2i)/(-1+3i)
pi + sqrt(2)i
complex(real=pi, imaginary = sqrt(2)) -> z1
z1
sqrt(-5)
sqrt(as.complex(-5))
sqrt(3+2i) #Con es igual a sqrt(3)+sqrt(2i)
exp(3+2i)  #z^2 = 3+2i


# Estructura de datos
# Existen tipos de datos como: logical, integer, numeric, complex, character
vec=c(10,20,30) #Los vectores de definen con la letra 'c' delante de paréntesis.
vec
scan()
fix(vec)  #Permite editar los elementos de un vector.
vec
vector<-c(16,0,1,20,1,7,88,5,1,9)
vector
fix(vector)


# Progresiones aritméticas
seq(1,100, by=5) #Secuencia de numeros del 1 al 100 incremetados en 5.
seq(1,length.out=7,by=4)
seq(1,7,by=4)


# Funciones y orden de vectores
cuadrado=function(x){x^2}
v=c(1,2,3,4,5,6)
apply(v, FUN = cuadrado)  #Aplicar funciones a vectores.
sort(v) 
rev(v)
mean(v)

x=1:10 # Asignación de 10 elementos.
x
length(x) #Longitud del vector
x^3
max(x)
min(x)
sum(x)
diff(x)

#Subvectores
subvec = seq(3, 50, by=3.5)
subvec
subvec[4]
subvec[length(subvec)]
subvec[length(subvec)-2]
subvec[2:5] #Obtiene los elementos desde la posición 2 a la 5.
subvec[seq(2, length(subvec),by=2)] #Elementos de las posiciones pares
subvec[seq(1, length(subvec),by=2)] #Elementos de las posiciones impares
subvec[(length(subvec)-3):(length(subvec))]
subvec[subvec>30]
subvec[subvec<30 | subvec>40]
subvec[subvec%%2==0] #Elementos pares
subvec[subvec%%2==1] #Elementos impares
subvec>30  #Se obteniene un coleccion booleano mayor que 30.


#Uso de Which
x
which(x>4) #which devuelve las posiciones del vector.
x[which(x>8)]
which(x>2 & x<8)
x[which(x>2 & x<8)]


# Filtran los valores NA (not available)
vec_na= 10:20
vec_na
vec_na[21] #valor NA
vec_na[length(vec_na)+5]=100
vec_na
sum(vec_na) #El resultado es NA
prod(vec_na) #El resultado es NA
mean(vec_na) #El resultado es NA
cumsum(vec_na)
sum(vec_na, na.rm = TRUE)
prod(vec_na, na.rm=TRUE)
mean(vec_na, na.rm=TRUE)
which(vec_na==NA)
is.na(vec_na) #verificar los elementos que son "NA"
which(is.na(vec_na))
sum(!is.na(vec_na))
na.omit(vec_na) #Omite los elementos "NA"
sum(na.omit(vec_na))
vec_na_omit= na.omit(vec_na)
vec_na_omit
attr(vec_na_omit,"na.action")=NULL #Quita los atributos del NA omit
vec_na_omit


#Factores
#Es similar a un vector, con una estructura interna más rica, permite catalogar o clasificar en niveles.
notas=c(1,2,3,1,2,4,1,3,5,2,4,1,2)
notas.factor=factor(notas)
notas.factor
levels(notas.factor)
levels(notas.factor)=c("baja","baja alta","media","media alta","alta") #Cambiar las etiquetas de los niveles
notas.factor
levels(notas.factor)
levels(notas.factor)=c("Suspendido", "Aprobado","Aprobado","Aprobado","Aprobado") #Agrupar niveles
notas.factor


#Listas
#Permite construir vectores heterogeneos, es decir diferentes tipos. Vectores multiples.
vec_numeros=c(1,2,-1,-2,-3,4,5,6,7)
miLista = list(vector=vec_numeros, nombre="Victor Cruz Gomez", media=mean(vec_numeros), sumas=cumsum(vec_numeros))
miLista
miLista$vector
miLista$nombre
miLista$media
miLista$sumas
miLista[[1]]
miLista[[2]]
miLista[[3]]
miLista[[4]]
names(miLista) #Muestra los nombre de los elementos de la lista
str(miLista) #Muestar los nombres y datos de los elementos de la lista



#Matrices
#Es una tabla que organiza los datos en filas y columnas
M=matrix(1:12, nrow=4)
M
M=matrix(1:12, nrow=4, byrow = TRUE)
M
M=matrix(1:12, nrow = 5)
M
matrix(1, nrow = 4, ncol = 6)
M
M=rbind(M,c(0,0,0),c(1,1,1),c(2,2,2))
M=cbind(M,c(8,8,8,8,8,8,8,8),c(9,9,9,9,9,9,9,9))
diag(c(1,2,3,4,5))
diag(1,nrow = 6)
M[3,2]
M[3,]
M[8,]
M[,5]
M
M[c(3,4,5),c(2,3)] #Obtener una submatriz
M
colSums(M) #sumas por columnas
rowSums(M) #sumas por filas


#Repaso de Algebra Lineal
M
t(M) #Transpuesta de una matriz
M%*%t(M) #Multiplicacion de la matriz M con su transpuesta
M*M
det(M) #Determinante de una matriz, la matriz tiene que ser cuadrada.
solve(M) #Calcula la inversa de una matriz, la multiplicacion de la inversa por la matriz da la matriz identidad.
eigen(M) #Calcula los vectores y valores propios. Los vectores propios son aquellos que son estirados o encogidos sobre su propio eje.


#Representación Grafica
#Anadir elementos al grafico
#Anade una recta: y=ax+b
f=function(x){x^2-2*x+sqrt(abs(x))}

plot(f, xlim = c(-3,3)) #Grafica f con limites en x desde -3 a 3.

points(0,0, pch=19) #Grafica un punto en la posicion (0,0)

points(-3:3,c(-3:3)^2, col="blue")

abline(2,3, lty="dashed", col="red") #recta de pendiente 2, que pasa por 3. Antes se tiene que ejecutar 'plot'

abline(v=2, lty="dotted", col="green") #recta vertical x=2

abline(h=5, lty="dotdash", col="gray") #recta horizaontal en y=5

legend("bottomleft",
       legend = c(expression(x^2),expression(x^3), expression(x^4)),
       lwd=2,
       col = c("red","blue","orangered"),
       lty=c("dotted","dashed","dashed")
)

f=function(x){x^2}
plot(f, xlim = c(-3,3), col="red", lwd=)
abline(h=c(0:9), v=c(-3:3), lty="dotted", col="grey")
legend("bottomleft",
       legend = expression(x^3),
       lwd=5,
       col = "red",
       lty="dotted"
)


#Anadir texto a un grafico
alumnos=c(1:10)
notas=c(2,5,7,9,8,3,5,6,10,7)
plot(alumnos, notas, main="Grafico con texto")
text(alumnos, notas, 
     labels = c("S","A","N","E","N","S","A","A","E","N"), 
     pos=c(rep(3,times=8),1,3))
legend("bottomright",
       legend = "Letras",
       col="blue",
       lty="dotdash")

plot(0,0)
text(0,0,labels="debajo",pos=1)
text(0,0,labels="izquierda",pos=2)
text(0,0,labels = "arriba",pos=3)
text(0,0,labels="derecha",pos = 4)
legend("top",
       legend = "`Posiciones",
       col = "red")

points(0,1)
text(0,1, labels = "centro")

f=function(x){x^2}
plot(f,xlim = c(-3,3))
points(-3:3,f(-3:3),lwd=2,lty="dotted",col="red")
lines(-3:3,f(-3:3),lwd=2,lty="dashed",col="green")
legend("bottomleft",
       legend = "x^2",
       col="blue"
)


#Añadir leyendas al grafico
x=seq(0,2*pi,0.1) #Obtiene una secuencia de números entre 0 y 2*pi, separados por 0,1 espacios.
x

plot(x,
     sin(x),
     type = "l",
     col="blue", 
     lwd=3,xlab="", 
     ylab="")
lines(x,cos(x),col="green",lwd=3)
lines(x,tan(x),col="purple",lwd=3)
legend("bottomleft",
       col=c("blue","green","purple"), 
       legend = c("Seno","Coseno","Tangente"), 
       lwd=3, 
       bty="l")


#Gráficos varios
x=c(5*(1:10))
plot(x,
     c(exp(-x)+(-1)^x*x/2*sin(x)^2), 
     xlab="", 
     ylab ="",
     main = "Grafico con varios elementos")

segments(10,0,40,0, col = "red", lwd=4) #linea
arrows(10,0,40,-10, col = "blue", length = 0.9, angle = 5, code = 3) #flecha
symbols(40,0, stars = cbind(1,.5,1,.5,1,.5,1,.5,1,.5), add = TRUE, lwd=3, inches = 0.5) #estrella
symbols(40,0, stars = cbind(1,.5,1,.5,1,.5,1,.5,1,.5), add = TRUE, lwd=3) #estrella
polygon(c(20,30,40),c(10,-10,10), col="gold", density = 3, angle = 90, lty = 4, lwd=5) #poligono


#Representacion de graficos
alumnos = c(1:10)
notas = c(1,4,6,3,5,7,8,5,7,10)
plot(alumnos,notas)

plot(alumnos) #Si no incorporamos vector 'y', 'R' va a tomar el parametro 'x' como si fuese el vector de datos 'y'

plot(2^(1:6)) #X=1..n; y=2^(1:6)

#Si quieremos representar una funcion f(x)
f=function(x){sqrt(x)}
plot(f)


#Parametros de la funcion plot
n=1:20
fib=(1/sqrt(5))*((1+sqrt(5))/2)^n - (1/sqrt(5))*((1-sqrt(5))/2)^n
fib
par(mfrow=c(1,2))  #Divide la seccion en una fila y dos columnas
plot(fib,xlab="Etiqueta x (n)", 
     ylab=paste("Etiqueta en y",expression(F[n])) ,
     main="Sucesion de Fibonacci", 
     cex=4, 
     pch=21, 
     col="powderblue",
     bg="orchid")

plot(fib,xlab="Etiqueta x (n)", 
     ylab=paste("Etiqueta en y",expression(F[n])) ,
     main="Sucesion de Fibonacci", 
     pch=20, 
     cex=4, 
     col="powderblue",
     bg="orchid")

par(mfrow=c(1,1))

par(mfrow=c(3,2))
x=c(50:59)
y=c(2,9,25,3,100,77,62,54,19,40)

plot(x, y, pch=23, cex=2, col="blue", type = "p") #puntos
plot(x, y, pch=23, cex=2, col="blueviolet", type="l") #lineas
plot(x, y, pch=23, cex=2, col="gold", type="b") #lineas rectas que unen puntos
plot(x, y, pch=23, cex=2, col="deeppink", type="o") #lineas rectas que unen punto. Las lineas traspasan los puntos
plot(x, y, pch=23, cex=2, col="springgreen", type="h") #histogramas
plot(x, y, pch=23, cex=2, col="firebrick1", type="s") #histogramas de escalones

par(mfrow=c(1,1))

plot(n, #variable x
     fib, #variable y
     pch=21, #caracter del punto
     col="red", #color del punto
     bg="yellow", #color de fonde del putno
     cex=1.2, #tamaño del punto
     type = "o", #linea rectas que unen puntos.
     lty="dashed", #tipo de linea
     lwd=2, #ancho de linea
     xlim=c(1,10), #tamaño de la coordenada x
     ylim=c(1,100), #tamaño de la cordenada 10
     xaxp=c(1,10,3), #Cantidad de division de la coordenada x
     yaxp=c(1,100,20) #Cantidad de cordenadas de la coordenada y
)


#Data frames
data() #Muestra los data set disponibles en R. Por ejemplo el data set de los sobrevivientes del Titanic.
data(package = "tidyverse")
data(package = "ggplot")
data(package=.packages(all.available = TRUE))

#Data set de Iris, contiene la longitud y anchura de petalos y cepalos de 150 tipos de plantas.

?iris #Mostras la documentacion de iris

#Se recomienda cargar un dataset en una variable para no modificar el dataset original.

#Data frame de Iris
df=iris
df

head(df,5) #muestra las primeras filas del dataframe
tail(df,10) #muestra las últimas filas del dataframe

names(df) #Muestra los nombres de las variables
str(df) #Consultar la estructura global del dataframe (variables, tipos de datos, cantidad de OBSERVACIONES)

str(Orange)
head(Orange, 10)


#Obteniendo información de un dataframe 
rownames(df) #nombres de las filas. Identificadores de cada fila del 1 al 150.
colnames(df) #nombres de las columnas.
dimnames(df) #lista con los nombres de las filas y columnas.
nrow(df) #devuelve el numero filas.
ncol(df) #devuelve el número de columnas.
dim(df) #devuelve el número de filas y columnas.

df$Sepal.Length #acceder una variable. El resultado es un array.
df$Petal.Length[1:10]. 
df$Species[1:10] #Obteniendo las primeras 10 observaciones de las especies.


#Subdata frames
df[10,5]

df[1:10, 2:4] #Obtener un subdataframe observaciones de la 1 a 10 y variables 2 a 4.

df[df$Species == "setosa" & df$Sepal.Width>4, ] #Obtener las columnas [fila, columna], según condición. En la columna colocar un espacio.

df[df$Species == "setosa" & df$Sepal.Width>4, ][c(1,3),c(2,5)] #Separar por corchetes para agregar otras condiciones de filtro.

dataOrange=Orange
dataOrange
dataOrange[c(10:12), ] #Obtiene los datos de la 10 a la 12.
dataOrange[dataOrange$circumference<=50,]


#Guardar y cargar datos en varios formatos
#factores en un DF
df3= read.table("https://maitra.public.iastate.edu/stat501/datasets/olive.dat")

str(df3) #Todos son factores*.
df3

df4= read.table("https://maitra.public.iastate.edu/stat501/datasets/olive.dat", stringsAsFactors = FALSE, header = TRUE)
str(df4) #Carga como caracteres
df4
str(d)


#importar datos de una página segura
#read.table no puede leer datos desde una conexion segura.
read.table(textConnection(getURL("url")))


#Tipos de lectura
read.csv() #importa un csv.
read.xls() #importa un archivo excel.
read.xlsx()
read.mtb() #importa un archivo minitab.
read.spss() #importa un archivo spss.


#Escribir un fichero
write.table(df, file="")


#Guardar un data frame
write.table(df3, file="../../victor.cruz/Documents/olive.txt", dec=".")

df4=read.table("../../victor.cruz/Documents/olive.txt", header = TRUE, dec=".")
df4

df5=read.table("https://maitra.public.iastate.edu/stat501/datasets/wine.dat")
str(df5)

write.table(df5, file="../../victor.cruz/Documents/dsVinos.txt",dec=".")

df5=read.table("../../victor.cruz/Documents/dsVinos.txt", header = TRUE, dec=".")
df5


#Como contruir un dataframe
Algebra=c(1,2,0,5,4,6,7,5,5,8)
Analysis=c(3,3,2,7,9,5,6,8,5,6)
Statistics=c(4,5,4,8,8,9,6,7,9,10)

grades=data.frame(Alg=Algebra, An=Analysis, Stat=Statistics) #Construir un dataframe a partir de vectores dados.
str(grades)

Gender=c("H","M","M","M","H")
Age=   c( 23, 45, 20, 30,18)
Family=c(  2,  3,  4,  5,5)

dfFamily=data.frame(genero=Gender, edad=Age, familia=Family, stringsAsFactors = TRUE) #Construir una dataframe con los strings como factores (categorizar en niveles).
dfFamily

row.names(dfFamily)=c("P1","P2","P3","P4","P5") #Agregando nombres a las filas
dfFamily
str(dfFamily)

fix(dfFamily) #Editar el dataframe
dfFamily


#Cambiar los nombres de las dimensiones, es decir filas y columnas
dimnames(dfFamily)=list( 
  c("Victor","Grace","Jhon","Maria","Miriam"), #Nombres para las filas.
  c("Sexo","Años","MiembrosFamilia") #Nombres para las columnas.
)
dfFamily

dfFamily=rbind(dfFamily, c("H",30,1)) #Agrega una fila al final
dfFamily

Calculus=c(5,4,6,2,1,0,7,8,9,6)
grades2=cbind(grades, Calculus) #agregar una columnas con las notas de la materia Calculo
grades2

dfFamily$Ingresos=c(100,200,300,100,200,300,600) #agregar una columna
dfFamily


#Funciones en dataframe
str(iris)

sapply(subset(iris, select=1:4), mean)
sapply(iris[,1:4],sum)

f=function(x){sqrt(sum(x^2))}
sapply(iris[,1:4], f)

df=data.frame(c1=c(1,2,NA,4),c2=c(5,NA,2,3))
sapply(df, mean)
sapply(df, mean, na.rm=TRUE)


#Función table
#En R la tabla de 'frecuencias absolutas'; Calcula la tabla de frecuencia absoluta por niveles (H, M, ojos, cabello). Permite analizar la asociación entre 2 o más variables.

#La función sample genera muestra aleatorias
x=sample(1:5, size=12, replace=TRUE) #Muestra de bolas numeradas del 1 al 5 de las cuales se sacan aleatoriamente con reposición.
x

respuestas=factor(sample(c("si","no"), size=12, replace=TRUE)) #Muestra aleatoria con niveles 'si'y'no' de tamaño 12.
respuestas
x
table(x) #La función 'table' calcula la tabla frecuencias absolutas por niveles (cuenta el total por cada nivel). 
#Table, permite analizar la asociación entre dos o más variables.
#En estadística se llama 'tabla de contingencia'.
#Obtiene en una fila con los niveles de las variables y en otra con la frecuencia absoluta de cada uno de los niveles.

table(respuestas) 

names(table(x))
names(table(respuestas)) #Obtener los nombres de las variables.

z=factor(x, levels=1:7) #Agrega niviles. Completa los niveles restantes.
z

table(z) #Calcula la tabla de contingencia del factor 'z'

table(x)
table(x)[3] #Obtiene en nivel 3 y su valor absoluto.
table(x)["3"]

3*table(x)[3] #Multiplica 3 a la frecuencia absoluta del nivel '3'

datos=factor(c("H","H","M","H","M","M","H","H"))
datos

table(datos) #Calcula la tabla de contingencia
table(datos)["M"]


#La funcion PROP.TABLE()
#Calcula la tabla de frecuencia relativas, es decir la proporción de cada variable respecto al total de la muestra.
#Para obtener la proporción, se aplica 'prop.table' de la 'table'

prop.table(table(x)) #Calcula la frecuencia relativa de 'x'
prop.table(table(respuestas))#Calcula la frecuencia relativa de 'respuestas'
prop.table(x) #El resultado no es la frecuencia absoluta

x1=c(1,1,1)
table(x1) #Frecuencia absoluta.
prop.table(table(x1)) #Calcula la frecuencia relativa, porque las proporciones son únicas, número '1'.
prop.table(x1) #Los tres niveles del factor tiene la misma proporción, no es una frecuencia absoluta.

table(x1)/length(x1) #Calcula la frecuencia absoluta. Es resultado es igual a 'prop.table(x1)'

table(x) 
names(which(table(x)==3)) #Que niveles del factor es igual a n. Es decir que nivel tiene valor absoluto igual a 3

names(which(table(x)==max(table(x)))) #Calculando la moda

table(respuestas)
names(which(table(respuestas)==max(table(respuestas)))) #Calculando la moda

datos=factor(c("H","M","M","M","H","H","M","M")) 
prop.table(table(datos)) #Obtener la proporcion, frecuencia relativa
table(datos)/length(datos) #Obtener la propocion manualmente. frecuencia absoluta/n_observaciones

names(table(datos)) #Obtiene los niveles

names(which(table(datos)==3)) #Que nivel aparace 3 veces

names(which(table(datos)==max(table(datos)))) #moda


#Obteniendo la moda a partir de una funcion
moda=function(d){
  names(which(table(d)==max(table(d))))
}

mt=moda(datos)
mt



#Tabla de frecuencias bidimensionales
Respuesta=factor(sample(c("si","no"), size=12, replace = TRUE))
Respuesta

Sexo= sample(c("H","M"), size = length(Respuesta), replace = TRUE) #Muestra aleatoria de extraer datos "H" y "M" con reemplazo.
Sexo

table(Respuesta, Sexo)  #Calcula la frecuencia absoluta de dos variables (El total de datos por cada nivel).

#Una persona lee mejor por filas. Sugerencia acostumbrarse a leer las matrices por filas.
table(Sexo, Respuesta)  

t(table(Sexo, Respuesta)) #Transpuesta de la matriz, en este caso transpuesta de la tabla de frecuencias bidimensionales.

table(Respuesta, Sexo)[2,2]  #Obtener el la respuesta 2 y sexo 2. Similar a la lectura de una matriz filas y columnas.


#Frecuencia Relativa Global
#Siempre se mide respecto al total, pero en este caso para dos variables.
prop.table(table(Sexo, Respuesta)) 


#Frecuencia Relativa Marginal (Subpoblaciones)
#Se calcula la proporción respecto a una variable (marginal= que está al margen o que tiene una importancia secundaria).

prop.table(table(Sexo, Respuesta), margin = 1) 
#Cálculo de la proporción respecto a una variable, en este caso por sexo ('H' y 'M'). Se lee por filas. 
#Del total de 'H' 0.4 han respondido que 'si' y 'H' 0.6 han respondió que 'no'. 
#Como responde que 'si' y 'no' los hombre y mujeres

prop.table(table(Sexo, Respuesta), margin = 2) 
#Cálculo de la proporcion respecto a una variable, en este caso por respuesta. Se lee por columnas.
#Para cada una de las respuesta 'si' o 'no'.
#Los que han respondido que no, 0.5 eran 'H' y 0.5 eran 'M'

#Paquete 'gmodels'
library(gmodels)

#Crostable, obtiene el resumen de tablas de frecuencia absolutas y las tres frecuencias relativas (relativas globales y dos relativas marginales por cada variable)
sexo     =factor(c("H","M","M","M","H","H","M","M"))
respuesta=factor(c("S","N","S","S","S","N","N","S"))

#Resolución manual
#Variable 'sexo'
#Niveles 'H' y 'M'
#Variable 'respuesta'
#Niveles 'S' y 'N'

#Total 'H'=2
#Total 'M'=5
#Total 'S'=5
#Total 'N'=3

#Frecuencia absoluta =
#Frecuencia relativa por fila =
#Frecuencia relativa por columna =
#Frecuencia relativa global =

CrossTable(sexo, respuesta, prop.chisq = FALSE)

#Lectura de las celdas
#N            = Frecuencia absoluta.
#N/row total  = Frecuencia relativa por fila. o marginal por filas
#N/col total  = Frecuencia relativa por columna o marginal por columnas
#N/table total= Frecuencia relativa global sobre el total de la tabla

#CrossTable manual
table(sexo, respuesta) #Frecuencia absoluta

colSums(table(sexo, respuesta)) #Suma por columnas
colSums(prop.table(table(sexo, respuesta))) #Suma por columnas en proporcion

rowSums(table(sexo, respuesta)) #Suma por filas
rowSums(prop.table(table(sexo, respuesta))) #Suma por filas en proporcion

tt=table(sexo, respuesta)
tt #Frecuencias absolutas 

prop.table(tt) #Frecuencia relativa global
prop.table(tt, margin = 1) #Frecuencias relativas Por sexo 
prop.table(tt, margin = 2) #Frecuencias relativas Por respuesta

colSums(tt)
rowSums(tt)
colSums(prop.table(tt))
rowSums(prop.table(tt))

apply(tt,FUN=sum, MARGIN = 1) #Margin por fila.


#CrossTable, permite obtener la frecuencia absoluta y las tres relativas.
install.packages('gmodels')
library(gmodels)

sexo      =factor(c("H","M","M","M","H","H","M","M"))
respuestas=factor(c("S","N","S","S","S","N","N","S"))

CrossTable(sexo,respuestas, prop.chisq = TRUE) #Calcula todas las frecuencias.

N               = Frecuencia absoluta. 
N / Row Total   = Frecuencia relativa por filas
N / Col Total   = Frecuencia relativa por columnas
N / Table Total = Frecuencia global

colSums(table(sexo, respuestas))
rowSums(table(sexo, respuestas))

colSums(prop.table(table(sexo, respuestas)))
rowSums(prop.table(table(sexo, respuestas)))


#Un ejemplo de estadística multidimensional

sexo     = sample(c("H","M"), size=100, replace=TRUE)
respuesta= sample(c("Si","No"), size=100, replace=TRUE)
lugares  = sample(c("San Francisco","Barcelona", "Valencia","Cobija","Asturias"), size = 100, replace=TRUE)

table(sexo, respuesta, lugares)

ftable(sexo, respuesta, lugares) #Tabla de formato plano

ftable(sexo, respuesta, lugares, col.vars = c("sexo","respuesta"))

#Filtra las tablas
table(sexo, respuesta, lugares)["M","Si","San Francisco"]  #Hombres que han dicho que SI
table(sexo, respuesta, lugares)[ ,"Si","Valencia"] #Hombre y Mujeres que han dicho que SI en Valencia
table(sexo, respuesta, lugares)[ ,"No", ] #Hombres y Mujeres que hayan dicho que No en cualquier lugar
table(sexo, respuesta, lugares)["M",,"Cobija"] #Mujeres que han dicho que SI/NO en cobija

#Frecuencias relativas
prop.table(table(sexo,respuesta,lugares)) 
#frecuencia relativas globales. Fracción que representa cada terna por el total
prop.table(table(sexo,respuesta,lugares), margin = 3) 
#frecuencia relativa marginal por lugar. Fraccion de cada pareja (sexo y respuesta) dentro de cada pais.
#Ej. 	En La Paz: 5 hombres han respondido que 'SI' y 6 hombres han respondido que 'NO'.
3 mujeres han respondido que 'SI' y 8 mujeres han respondido que 'NO'

prop.table(table(sexo,respuesta,lugares), margin = c(1,3)) 
#Frecuencia relativa marginal por sexo y lugar. Fraccion por cada paraja(sexo,lugar) dentro de cada pais.
#Ej. 	En La Paz - Hombres: 5 han respondido que 'SI' y 6 han respondido que 'NO'
En La Paz - Mujeres: 3 han respondido que 'SI' y 8 han respondido que 'NO'


ftable(prop.table(table(sexo, respuesta,lugares)))


#El conjunto de datos HaiEyeColor
HairEyeColor #Es un dataset de R, de tres variables cualitativas.

#Se lee: Todos los HOMBRES con PELO NEGRO y OJOS MARRONES son 32.

sum(HairEyeColor) #El número total de individuos.

prop.table(HairEyeColor, margin = 3) #Tabla marginal por genero.
#Se lee: El 0.1146 de los hombres tienen pelo negro y ojos marrones.

prop.table(HairEyeColor, margin = c(1,2)) #Marginar del color de cabello y ojos.
#Se lee:De las persona con pelo negro y ojos verdes el 60 el 0.05335 son hombres y 0.038 son mujeres.

aperm(HairEyeColor, perm = c("Sex","Hair","Eye"))  #array permutation, permite cambiar el orden de las variables.
#Se lee: 32 hombres tienen el pelo negro y ojo marron. 36 mujeres tienen el pelo negro y ojos marrones.


#Libreria kable
install.packages("kableExtra")
library(kableExtra)

kable(HairEyeColor) #Muestra los datos del data set en forma de filas y columnas. Se utilzar en pdf.

library(xtable) #Funciona para tabla de dos dimensiones. Se utiliza en pdf


#Tablas a partir de data frames de variables cualitativas
beb_energy= read.table("C:/dataFrame/EnergyDrink", header=TRUE)
beb_energy

str(beb_energy)  #El dataframe tiene 3 variables (Estudio, Bebe, Sexo). Y cada variable tiene niveles. Por ejemplo: bebe: si/no; sexo hombre/mujer

head(beb_energy)

summary(beb_energy) #Obtiene un resumen de las variables por niveles. Frecuencia absolutas de cada variable.

apply(beb_energy, MARGIN = 2, FUN=table) #Calculando las marginales para cada una de las variables.

apply(beb_energy, MARGIN = 2, FUN=table)$bebe #Obtener la tabla de contingencia 'bebe'

table(beb_energy$bebe) #Similar a la anterior instruccion, obtiene la tabla de contingencia 'bebe'

table(beb_energy)

table(beb_energy[c(1,3)]) #Table de Estudio y Sexo

ftable(beb_energy)


#Diagrama de barras (bar plots)
#Grafico para representar las variables cualitativas son los diagrama de barras.
#El argumento del barplot tiene que ser una tabla.
Sexo
Respuesta

barplot(table(sexo), 
        col=c("lightblue","pink"), 
        main="Diagrama de barras de las frecuencias absolutas \n de la variable \"sexo\"")

barplot(prop.table(table(respuesta)),
        main="Diagrama de barras de las frecuencias relativas \n de la variable \"respuesta\"")

par(mfrow=c(1,2))
barplot(table(respuesta), 
        col=c("green"))
barplot(table(respuesta), 
        col=c("red","blue"))

par(mfrow=c(1))
barplot(table(sexo),
        horiz = TRUE,
        legend.text = TRUE)

barplot(table(sexo, respuesta), legend.text = TRUE) #barplot con dos variables apildas. 
#Ej. de lectura: cuanta gente ha dicho que si/no.

barplot(table(sexo, respuesta), beside = TRUE, legend.text = TRUE) #barplot con dos variable una al lado del otro. 
#Ej. de lectura: que genero predomina en la respuesta si/no

barplot(table(respuesta, sexo), beside = TRUE, names=c("Men","Women"), col=c("yellow","lightblue"), legend.text =c("No","Si"))


#Diagrama circular
#Muestra el area que ocupa cada varaible.
#Se aplica a la tabla de frecuencias absolutas/relativas.
#No es facil de comprender a simple vista.

par(mfrow=c(1,1))
pie(table(respuesta), main="Diagrama circular de la variable respuestas")


#Diagrama de mosaico
#Se obtienen sustituyendo.
#El grafico de mosaico de tres dimensiones es mas difícil de leer.

plot(table(sexo,respuesta), main="Grafico de mosaico de las varibles Sexo y Respuestas")
#Ej. de lectura: Mas de la mitad de los que respondieron son hombres

plot(HairEyeColor, main="Grafico de mosaico de la tabla HairEyeColor", col=c("pink","lightblue"))
#Ej. de lectura: que proporcion de pelo negro y ojos marrones son hombres y mujeres.


#Paquete 'vcg' para generar graficos tipo mosaico
install.packages("vcd")
vcd::cotabplot(HairEyeColor) #La diferencia al grafico mosaico de R es la separacion de graficos por la tercera variable.

#Paquete 'vcgExtra' para generar grafico tipo mosaico en 3d
install.packages("vcdExtra")
install.packages("rgl")
vcdExtra::mosaic3d(HairEyeColor, type="expected", box=TRUE, col= c("lightblue","pink"))

#Nota: el paquete 'ggplot' es el más avanzado.


#Ejercicio completo de datos cualitativos
str(HairEyeColor)  #Dataframe de tres dimensiones: [Hair, Eye, Sex]

#Paso 1. Juntar color de ojos y pelo sin distinguir el sexo.
male<-HairEyeColor[, ,"Male"]
male

female<-HairEyeColor[, ,"Female"]
female

data<- as.table(male+female)
data

#Paso 2. Manipulacion de datos
dimnames(data)

dimnames(data)=list(
  Pelo=c("Negro","Marron","Rojo","Rubio"),
  Ojos=c("Marrones","Azules","Pardos","Verdes")
)

data
#Paso 3. Elaborar un grafico de mosaico

plot(data, col=c("lightblue"), main="Grafico de mosaico")

#Paso 4. Calcular el numero de individuos del dataframe
sum(data)

#Paso 5. Obtener la tabla de frecuencia absoluta y relativa de cada una de las variables
data
colSums(data)#Frecuencias absolutas de ojos
rowSums(data)#Frecuencias absolutas de pelos

round(prop.table(colSums(data)),3)#Frecuencias relativas de ojos
round(prop.table(rowSums(data)),3)#Frecuencias relativas de pelos

#Paso 6. Elaborar dos graficos con las frecuencias relativas de ojos y cabellos
barplot(prop.table(colSums(data)),#Grafico de barras para la variable ojos
        ylim = c(0,0.4),
        main = "Frecuencia relativa del color de ojos",
        col=c("burlywood4","lightblue","orange3","lightgreen")
) 

barplot(prop.table(rowSums(data)),#Grafico de barras para la variable cabellos
        ylim=c(0,0.5),
        main="Frecuencia relativa del color de cabello",
        col = c("black","burlywood4","red","yellow")
) 

#Paso 7. Obtener las Frecuencias relativas global y marginales
data

round(prop.table(data),3)#Frecuencias relativas globales. 
#Se lee: Respecto a la problacion total.

round(prop.table(data, margin = 1),3) #Frecuencia relativa marginal por Pelo.
#Se lee:(Se empiezan leyendo por el margin 1= pelo) De las personas con 'Pelo' negro el 0.630 tienen ojos marrones.
round(prop.table(data, margin = 2),3) #Frecuencia relativa marginal por Ojos.
#Se lee:(Se empiezan leyendo por el margin 2= ojos)De las personas con 'Ojos' marrones el 0.309 tinen pelo negro.

#Paso 8. Graficar las frecuencias relativas
barplot(prop.table(data, margin = 1), 
        beside = TRUE,
        legend.text = TRUE,
        ylim = c(0,0.8),
        col=c("black","burlywood4","red","gold"),
        main="Frecuencias relativas del colore de pelo \n para cada color de ojo")

barplot(t(prop.table(data, margin = 2)),
        beside = TRUE,
        legend.text = TRUE,
        ylim = c(0,0.6),
        col = c("burlywood4","lightblue","orange3","lightgreen"),
        main="Frecuencias relativas del ojos para cada color de pelo"
)



#Ejercicio (Repetido)
HairEyeColor

#Paso 0. Obtener las tablas de Male y Female.
male<-HairEyeColor[,,"Male"]
male

female<-HairEyeColor[,,"Female"]
female

#Paso 1. Juntar color de ojos y pelo sin distinguir el sexo.
data<-as.table(male+female)
data
#Paso 2. Renombrar los nombres de las dimensiones
dimnames(data)=list(
  Pelo=c("Negro","Marron","Rojo","Rubio"),
  Ojos=c("Marrones","Azules","Pardos","Verdes")
)
data
#Paso 3. Elaborar un gráfico de mosaico
plot(data, col=c("lightblue"), main="Grafico de mosaico")
#Paso 4. Calcular el número de individuos del datagrama
sum(data) #Suma el resultado de cada columna (220      215       93       64) que corresponderia al numero total de individuos.
#Paso 5. Obtener la tabla de frecuencia absoluta y relativa de cada una de las variables
data
colSums(data) #Frecuencia absoluta de Ojos (sumatoria por cada nivel, en este caso por columnas)
rowSums(data) #Frecuencia absoluta de Cabellos (sumatoria por cada nivel, es este caso por filas)
round(prop.table(colSums(data)),3) #Frecuencias relativas de Ojos.
round(prop.table(rowSums(data)),3) #Frecuencias relativas de Cabellos.
#Paso 7. Obtener las Frecuencias relativas global y marginales
data
round(prop.table(data),3) #Frecuencia relativa global (dos variables; dividir entre el total de la poblacion)
round(prop.table(data, margin = 1),3) #Frecuencia relativa marginal por filas(dividir entre el total de la poblacion por filas)
round(prop.table(data, margin = 2),3) #Frecuencia relativa marginal por columnas (dividir entre el total de la poblacion por columnas)
#Paso 8. Graficar las frecuencias relativas 
barplot(prop.table(data,margin = 1),
        beside = TRUE,
        legend.text = TRUE,
        ylim=c(0,0.8),
        col=c("black","burlywood4","red","gold"),
        main="Frecuencias relativas del color del pelo \n para cada color de ojo"
        )

barplot(t(prop.table(data,margin = 2)),
        beside=TRUE,
        legend.text = TRUE,
        ylim = c(0,0.6),
        col=c("burlywood4","lightblue","orange3","lightgreen"),
        main="Frecuencias relativas de los colores de ojos \n para cada color de pelo"
        )

#Datos oridinales (casa 20190420)

#Frecuencias acumuladas de datos ordinales.

#Cuentas veces hemos observado un datos menor o igual de lo observado.
#Se crea con la funcion 'ordered' y no 'factor'.

#Ejemplo 1
#Notas de estudiantes.
notas=ordered(c("S","A","N","Ex","S","S","Ex","Ex","N","A","A","A","A","N","S"), levels=c("S","A","N","Ex"))
notas

fabs=table(notas) #Tabla de contingencia de frecuencias 'absolutas'.

cumsum(fabs) #Tabla de frecuencias 'absolutas acumuladas'

cumsum(prop.table(fabs)) #Tabla de frecuencias 'relativas acumuladas' (primer forma de calcular).

cumsum(table(notas))/length(notas) #Tabla de frecuencias 'relativas acumuladas' (segunda forma de calcular).

cumsum(table(notas)/length(notas)) #Tabla de frecuencias 'relativas acumuladas' (tercera forma de calcular).

barplot(fabs, main="Diagrama de barras de frecuencias absolutas")

barplot(cumsum(fabs), main="Diagrama de barras de frecuencias relativas acumuladas")

#Ejemplo 2
#Un estudio a un grupo de clientes de un restaurante que les hizo la siguiente pregunta: 
#Estas contento con el trato ofrecido por los trabajadores del establecimiento?
set.seed(2018) #Semilla para generar siempre los mismos datos aleatorios de la muestra.
clientes=sample(1:5, 50, replace = TRUE)
clientes

table(clientes) #Tabla de frecuencias absolutas.




#20190425 (casa)
#Medidas de centralizacion

edad=c(15,18,25,40,30,29,56,40,13,27,42,23,11,26,25,32,30,40,33,29)

mean(edad) #La media aritmetica.
median(edad) #La mediana es  29+29/2
as.numeric(names(which(table(edad)==max(table(edad))))) #La moda es 40


set.seed(162017)
dados= sample(1:6, 25, replace = TRUE)
dados
sort(dados)

mean(dados) #Media aritmetica
median(dados) #Mediana
as.numeric( #Moda
  names( #Obtener el nombre del resultado que es igual a '40'
    which(
      table(edad)==max(table(edad))  #Identificar el valor que mas se repite (moda)
      )
    )
  ) 


#20190501 (casa)
#Medidas de posicion

#Ejemplo 3
set.seed(260798)
dado=sample(1:4, 50, replace = TRUE)
set.seed(NULL)
length(dado)
dado=sort(dado)


df.dado=data.frame(Puntuacion=1:4,
                   fr.abs=as.vector(table(dado)),
                   fr.rel=as.vector(round(prop.table(table(dado)))),
                   fr.acu=as.vector(cumsum(table(dado))),
                   fr.racu=as.vector(cumsum(prop.table(table(dado))))
                   )

df.dado

#Si nos piden el cuantil 0.3, observar la columna de 'frecuencia relativa acumulada', es el primer elemento de la lista (0,38) 
#cuya frecuencia relativa acumulada es mayor o igual a 0,3. Este corresponde con la puntuacion 1.

#En R los cuantiles de orden 'p'
#En matematicas, se denomina interpolacion a la obtencion de nuevos puntos partiendo del conocimiento de un conjunto discreto de puntos.

#Ejemplo 4
set.seed(0)
dados2=sample(1:6,15, replace = TRUE)
dados2
sort(dados2)
set.seed(NULL)
quantile(dados2,0.25) #25% Primer cuantil

quantile(dados2, 0.8) #80%



#MEDIDAS DE DISPERSION
#Miden como de dispersos estan los datos, si estan muy concentrados al rededor de un valor hablaremoos de una dispersion baja, 
#si estan muy alejados hablaremos de una dispersion alta.
  #Rango o recorrido: es la diferencia entre el maximo y minimo de las observaciones.
  #Rango intercuartilico: es la diferencia entre el tercer y primer cuartil.
  #La varianza: Es la media aritmetica de las diferencias de las diferencias al cuadrado entre los datos Xi y la media aritmetica.



#20190506 (casa)
#Como calcular las medidas de dispersion en R

dados2=sample(1:6, 15, replace = TRUE)
dados2

diff(range(dados2)) #Rango. Entre el valor mas pequeno y mas grande hay 5 puntos.

IQR(dados2) #Rango intercuartilico. Entre el 1er cuartir y 3er cuartil hay 3.5 puntos de diferencia. 
#Entre el 25% de los datos y el 75% el 50% de datos mas centrales una vez ordenados hay 3.5 puntos de diferencia.

var(dados2) #Varianza muestral.

sd(dados2) #Desviacion estadar muestral.

n=length(dados2) #Longitud.

var(dados2)*(n-1)/n #Varianza poblacional.

sd(dados2)*sqrt((n-1)/n) #Desviacion estandar poblacional.





#20







