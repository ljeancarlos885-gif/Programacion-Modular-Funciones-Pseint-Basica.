
Funcion es_valido <- validar_temperatura(temp)
    Definir temp_minima, temp_maxima Como Real
    temp_minima <- 18
    temp_maxima <- 25
	
    Si (temp >= temp_minima) Y (temp <= temp_maxima) Entonces
        es_valido <- Verdadero
    Sino
		es_valido <- Falso
    FinSi
Fin Funcion

Algoritmo Sensor_de_temperatura
	
    Definir temperatura_actual Como Real
    Definir temperatura_valida Como Logico
	
    Escribir "Bienvenido al simulador de sensor de temperatura."
    Escribir "Ingrese la temperatura actual en grados Celsius (°C):"
    Leer temperatura_actual
	
    
    temperatura_valida <- validar_temperatura(temperatura_actual)
	
 
    Si temperatura_valida Entonces
        Escribir "La temperatura ", temperatura_actual, "°C es adecuada."
    Sino
        Escribir "La temperatura ", temperatura_actual, "°C esta fuera del rango deseado (18°C - 25°C)."
    FinSi
FinAlgoritmo
