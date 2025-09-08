Funcion alerta_activada <- verificar_alerta(temperatura)
    Definir umbral Como Real
    umbral <- 30
	
    Si temperatura > umbral Entonces
        alerta_activada <- Verdadero
    Sino
        alerta_activada <- Falso
    FinSi
Fin Funcion

Algoritmo Sensor_de_temperatura_ambiente_umbral_alerta
	
    Definir temperatura_actual Como Real
    Definir alerta_activada Como Logico
	
    Escribir "Bienvenido al simulador de sensor de temperatura."
    Escribir "Ingrese la temperatura actual en grados Celsius (°C):"
    Leer temperatura_actual
	
    alerta_activada <- verificar_alerta(temperatura_actual)
	
    Si alerta_activada Entonces
        Escribir "¡Alerta! La temperatura ", temperatura_actual, "°C está por encima del umbral."
    Sino
        Escribir "La temperatura ", temperatura_actual, "°C es normal."
    FinSi
	
FinAlgoritmo
