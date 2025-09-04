Funcion p <- precio
	Escribir "ingresa el precio por unidad"
	Leer p
FinFuncion

Funcion c <- cantidad
	Escribir "ingresa la cantidad"
	Leer c
FinFuncion

Funcion i <- iva
	Escribir "ingresa el  iva"
	Leer i
FinFuncion

Funcion ive <- masiva (a,b,c)
	ive <-  a * b * c
FinFuncion

Funcion resultado <- multiplicar (a,b,c)
	resultado <- (a * b) +  masiva (a,b,c)
FinFuncion

Funcion mostrarresultado( res)
	escribir "el precio total con el iva incluido es " , res
FinFuncion
Algoritmo multiplicar_por_precio_unitario
	Definir pre, cant, i ,preciototal Como Real
	
	pre <- precio()
	cant <- cantidad()
	i <- iva()
	
	preciototal <- multiplicar (pre,cant,i)
	mostrarresultado(preciototal)
FinAlgoritmo
