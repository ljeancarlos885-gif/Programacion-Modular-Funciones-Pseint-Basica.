Funcion b <- base
	Escribir "ingresa la base del rectangulo cm"
	leer b
FinFuncion

Funcion a <- altura
	Escribir "ingresa el area del rectalgulo cm"
	leer a
FinFuncion

  Funcion arearectangulo <- area (b , a)
	arearectangulo <- b * a
FinFuncion

Funcion resultadoarea ( ar)
	Escribir "el area del rectangulo es ", ( ar ) " cm"
	
FinFuncion

Algoritmo calcular_area_de_un_rectangulo
	definir b,a,are Como Real
	b <- base()
	a <- altura()
	are <- area (a,b)
	resultadoarea(are)
FinAlgoritmo
