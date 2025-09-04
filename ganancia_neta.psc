Funcion ing <- ingreso
	definir ing Como Real
	Escribir "ingresa cuanto fueron los ingresos"
	Leer ing
FinFuncion

Funcion gas <- gasto
	definir gas Como Real
	Escribir "cuales fueron los gastos"
	Leer gas
FinFuncion

Funcion net <- ganancia (a,b)
	definir net Como Real
	net <- a - b
FinFuncion

Funcion ganancianeta(gan)
 escribir "la ganancia neta es ",gan
FinFuncion

Algoritmo ganancia_neta
	definir i,g,ne Como Real
	i <- ingreso()
	g <- gasto()
	ne <- ganancia (i,g)
	ganancianeta(ne)
FinAlgoritmo
