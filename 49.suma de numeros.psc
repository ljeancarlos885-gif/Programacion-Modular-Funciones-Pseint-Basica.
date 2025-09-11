Funcion cantidad <- Leer_cantidad
    Definir cantidad_aux Como Entero
    Repetir
        Escribir "¿Cuántos números desea ingresar?"
        Leer cantidad_aux
        Si cantidad_aux <= 0 Entonces
            Escribir "Debe ingresar un número entero positivo."
        FinSi
    Hasta Que cantidad_aux > 0
    cantidad <- cantidad_aux
FinFuncion

Funcion numero <- Leer_numero(indice)
    Definir numero_aux Como Real
    Escribir "Ingrese el número ", indice, ":"
    Leer numero_aux
    numero <- numero_aux
FinFuncion

Funcion suma <- Sumar_numeros(cantidad)
    Definir suma_aux Como Real
    Definir i Como Entero
    Definir num_actual Como Real
    suma_aux <- 0
    Para i <- 1 Hasta cantidad Con Paso 1
        num_actual <- Leer_numero(i)
        suma_aux <- suma_aux + num_actual
    FinPara
    suma <- suma_aux
FinFuncion

Algoritmo suma_numeros
    Definir cantidad Como Entero
    Definir resultado Como Real
	
    cantidad <- Leer_cantidad()
    resultado <- Sumar_numeros(cantidad)
	
    Escribir "La suma total de los ", cantidad, " números es: ", resultado
FinAlgoritmo
