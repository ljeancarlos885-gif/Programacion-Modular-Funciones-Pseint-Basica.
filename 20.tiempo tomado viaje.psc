Funcion cantidad <- ingresar_cantidad_tramos
	definir cantidad Como Entero
    Escribir "Ingrese la cantidad de tramos del viaje: "
    Leer cantidad
FinFuncion

Funcion tiempo <- ingresa_tiempo_tramo(tramo)
    Definir tiempo Como Real
        Escribir "Ingrese el tiempo del tramo ",  " (en horas): "
        Leer tiempo
FinFuncion

Funcion total <- Calcular_tiempo_viaje(c,t)
    Definir total Como Real
	total <- c * t
FinFuncion



Funcion  mostrar_resultado(total)
    Escribir "--------------------------------"
    Escribir "El tiempo total del viaje es: ", total, " horas"
    Escribir "--------------------------------"
FinSubProceso

Algoritmo tiempo_viaje
 
    
    tramo <- ingresar_cantidad_tramos()
	
	
	t_1 <- ingresa_tiempo_tramo(1)
	t_2 <-  ingresa_tiempo_tramo(2)

	viaje <- Calcular_tiempo_viaje(t_1,t_2)
   
    mostrar_resultado(viaje)
FinAlgoritmo

