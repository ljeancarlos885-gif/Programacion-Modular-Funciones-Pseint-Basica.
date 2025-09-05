Funcion base <- ingresar_base
	Escribir "ingresa la base del rectangulo cm"
	leer base
FinFuncion

Funcion altura <- ingresar_altura
	Escribir "ingresa el area del rectalgulo cm"
	leer altura
FinFuncion

Funcion base_altura <- multiplicar_base_altura(b , a)
	base_altura <- b * a
FinFuncion

Funcion resultadoarea(a)
	Escribir "el area del rectangulo es ",a  " cm"
	
FinFuncion

Algoritmo calcular_area_de_un_rectangulo
	definir b,a,are Como Real
	largo<- ingresar_base()
	ancho <-  ingresar_altura()
	area <- multiplicar_base_altura(largo,ancho)
	resultadoarea(area)
FinAlgoritmo