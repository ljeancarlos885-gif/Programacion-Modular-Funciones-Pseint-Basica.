
Funcion cantidad <- leer_cantidad_habitaciones
    Definir cantidad_habit Como Entero
    Repetir
        Escribir "¿Cuántas habitaciones desea evaluar?"
        Leer cantidad_habit
        Si cantidad_habit <= 0 Entonces
            Escribir "Debe ingresar un número entero positivo."
        FinSi
    Hasta Que cantidad_habit > 0
    cantidad <- cantidad_habit
FinFuncion

Funcion nombre <- leer_nombre_habitacion(indice)
    Definir nombre_habit Como Cadena
    Escribir "Ingrese el nombre o número de la habitación ", indice, ":"
    Leer nombre_habit
    nombre <- nombre_habit
FinFuncion

Funcion temperatura <- Leer_temperatura(nombre_habitacion)
    Definir temp_habit Como Real
    Escribir "Ingrese la temperatura registrada en la habitación ", nombre_habitacion, ":"
    Leer temp_habit
    temperatura <- temp_habit
FinFuncion


Funcion hay_alerta <- Verificar_alerta(temp, minimo, maximo)
    Si temp < minimo O temp > maximo Entonces
        hay_alerta <- Verdadero
    SiNo
        hay_alerta <- Falso
    FinSi
FinFuncion

Funcion total_acumulado <- Sumar_alerta(total_actual, alerta_activada)
    Si alerta_activada Entonces
        total_acumulado <- total_actual + 1
    SiNo
        total_acumulado <- total_actual
    FinSi
FinFuncion

Funcion leer_rango(  minimo, maximo )
    Repetir
        Escribir "Ingrese la temperatura mínima permitida:"
        Leer minimo
        Escribir "Ingrese la temperatura máxima permitida:"
        Leer maximo
        Si minimo >= maximo Entonces
            Escribir "La temperatura mínima debe ser menor que la máxima."
        FinSi
    Hasta Que minimo < maximo
FinFuncion

Algoritmo monitoreo_temperaturas
    Definir cantidad_habitaciones Como Entero
    Definir i Como Entero
    Definir nombre_hab Como Cadena
    Definir temp_hab Como Real
    Definir temp_min, temp_max Como Real
    Definir alerta_activada Como Logico
    Definir total_alertas Como Entero
	
    total_alertas <- 0
    cantidad_habitaciones <- Leer_cantidad_habitaciones()
    Leer_rango(temp_min, temp_max)
	
    Para i <- 1 Hasta cantidad_habitaciones Con Paso 1
        nombre_hab <- leer_nombre_habitacion(i)
        temp_hab <- Leer_temperatura(nombre_hab)
        alerta_activada <- verificar_alerta(temp_hab, temp_min, temp_max)
        total_alertas <- Sumar_alerta(total_alertas, alerta_activada)
		
        Escribir "Habitación: ", nombre_hab
        Escribir "Temperatura registrada: ", temp_hab, " °C"
        Si alerta_activada Entonces
            Escribir ">>> ALERTA: Temperatura fuera del rango <<<"
        SiNo
            Escribir "Estado: Dentro del rango."
        FinSi
        Escribir "-----------------------------"
    FinPara
	
    Escribir "Resumen del monitoreo:"
    Escribir "Total de habitaciones evaluadas: ", cantidad_habitaciones
    Escribir "Habitaciones con alerta de temperatura: ", total_alertas
FinAlgoritmo
