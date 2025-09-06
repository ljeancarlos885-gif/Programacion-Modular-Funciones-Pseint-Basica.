Funcion horas <- pedir_iempo_trabajado
    Definir horas Como Real
    Escribir "Ingrese el tiempo trabajado en horas: "
    Leer horas
FinFuncion

Funcion tarifa <- pedir_tarifa_hora
    Definir tarifa Como Real
    Escribir "Ingrese la tarifa por hora: "
    Leer tarifa
FinFuncion

Funcion total <- CalcularCosto(horas, tarifa)
    Definir total Como Real
    total <- horas * tarifa
FinFuncion

SubProceso MostrarResultado(total)

    Escribir "El costo total es: $", total

FinSubProceso

Algoritmo Costo_total_funcion_tiempo
    Definir horas, tarifa, total Como Real
    
    horas <-  pedir_iempo_trabajado()
    tarifa <-  pedir_tarifa_hora()
    
	total <- CalcularCosto(horas, tarifa)
    
    MostrarResultado(total)
FinAlgoritmo
