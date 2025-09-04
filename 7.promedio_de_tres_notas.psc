Funcion nota1 <- pedir_nota1
	escribir "escribe la 1ra nota"
	leer nota1
FinFuncion

Funcion nota2 <-  pedir_nota2
	escribir "escribe la 2da  nota"
	leer nota2
FinFuncion

Funcion nota3 <- pedir_nota3
	escribir "escribe la 3ra  nota"
	leer nota3
FinFuncion

funcion  resultado <- promedio  ( a,b,c)
	resultado <- ( a + b + c) / 3
FinFuncion
Funcion mostrarResultado (prom)
    Escribir "el promedio de las tres notas es: ",prom
FinFuncion
Algoritmo promedio_de_tres_notas
	definir n1,n2,n3, res Como Real
	n1 <-  pedir_nota1()
	n2 <-  pedir_nota2()
	n3 <- pedir_nota3()
	res <- promedio( n1,n2,n3) 
	mostrarResultado(res)
FinAlgoritmo