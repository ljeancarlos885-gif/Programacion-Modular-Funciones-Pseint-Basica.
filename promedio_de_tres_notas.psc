Funcion n <- nota
	escribir "escribe la 1ra nota"
	leer n
FinFuncion

Funcion n1 <- nota1
	escribir "escribe la 2da  nota"
	leer n1
FinFuncion

Funcion n2 <- nota2
	escribir "escribe la 3ra  nota"
	leer n2
FinFuncion

funcion  resultado <- promedio  ( a,b,c)
	resultado <- ( a + b + c) / 3
FinFuncion
Funcion mostrarResultado (prom)
    Escribir "el promedio de las tres notas es: ",prom
FinFuncion
Algoritmo promedio_de_tres_notas
	definir n1,n2,n3, res Como Real
	n1 <- nota()
	n2 <- nota1()
	n3 <- nota2()
	res <- promedio( n1,n2,n3) 
	mostrarResultado(res)
FinAlgoritmo
