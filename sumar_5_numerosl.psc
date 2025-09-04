// Función para capturar un número específico
Funcion numero <- pedirNumero(posicion)
    Escribir "Ingresa el número ", posicion, ":"
    Leer numero
FinFuncion


Funcion sumaTotal <- sumarCinco(n1, n2, n3, n4, n5)
    sumaTotal <- n1 + n2 + n3 + n4 + n5	
FinFuncion


Funcion mostrarResultado(suma)
    Escribir "La suma total de los 5 números es: ", suma
FinFuncion

Algoritmo sumar_5_numeros
	Definir n1, n2, n3, n4, n5, resultado como Entero
	
    n1 <- pedirNumero(1)
    n2 <- pedirNumero(2)
    n3 <- pedirNumero(3)
    n4 <- pedirNumero(4)
    n5 <- pedirNumero(5)
	
    resultado <- sumarCinco(n1, n2, n3, n4, n5)
    mostrarResultado(resultado)	
FinAlgoritmo
