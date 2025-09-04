Funcion l <- lunes
	Escribir "ingresa las ventas del dia lunes"
	Leer l 
FinFuncion

Funcion m <- martes
	Escribir "ingresa las ventas del dia martes"
	Leer m 
FinFuncion

Funcion mr <- miercoles
	Escribir "ingresa las ventas del dia miercoles"
	Leer mr 
FinFuncion

Funcion j <- jueves
	Escribir "ingresa las ventas del dia jueves"
	Leer j 
FinFuncion

Funcion v <- viernes
	Escribir "ingresa las ventas del dia viernes"
	Leer v 
FinFuncion

Funcion sv <- sumaventas ( a,b,c,d,e )
	sv <- a + b + c + d + e
FinFuncion

Funcion totalventas (ven)
	Escribir "esl total de ventas en la semana fue " (ven) " ventas"
FinFuncion

Algoritmo ventas_semana
  lu <- lunes()
  ma <- martes()
  mi <- miercoles()
  ju <- jueves()
  vi <- viernes()
  
  ventas <- sumaventas(lu,ma,mi,ju,vi)
  totalventas( ventas)
  
FinAlgoritmo
