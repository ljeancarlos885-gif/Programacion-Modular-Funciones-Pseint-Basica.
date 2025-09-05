Funcion ingresos <- ingresar_ingresos
	definir ingresos Como Real
	Escribir "ingresa cuanto fueron los ingresos"
	Leer ingresos
FinFuncion

Funcion gastos<- ingresar_gastos
	definir gastos Como Real
	Escribir "cuales fueron los gastos"
	Leer gastos
FinFuncion

Funcion calculo <- calcular_ganancia_neta (a,b)
	definir calculo Como Real
	calculo <- a - b
FinFuncion

Funcion ganancia_neta(gan)
	escribir "la ganancia neta es ",gan
FinFuncion

Algoritmo ganancias_neta
	definir desembolso,entrada,neta Como Real
	desembolso <- ingresar_ingresos()
	entrada <- ingresar_gastos()
	neta <-  calcular_ganancia_neta (desembolso,entrada)
	ganancia_neta(neta)
FinAlgoritmo
