Funcion dato_letra <- tomar_letra(letra)
    Definir dato_letra Como Caracter 
    Escribir "Escriba una letra del alfabeto: "
    Leer dato_letra
FinFuncion

Funcion mensaje <- crear_saludo(letra)
    Definir mensaje Como cadena
    mensaje <- "la letra asignada es: "  + letra
FinFuncion

Funcion  imprimir_saludos(mensaje)
    Escribir mensaje
FinFuncion


Algoritmo  asignar_una_letra
    Definir letra como caracter
	Definir mensaje Como cadena
	
    letra <- tomar_letra(letra)
    mensaje <- crear_saludo(letra)
    imprimir_saludos(mensaje)
	
FinProceso
