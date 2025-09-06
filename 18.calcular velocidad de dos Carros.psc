Funcion distancia <- ingresar_distancia(carro)
    Definir distancia Como Real
    Escribir "Ingrese la distancia recorrida por el Carro ", carro, " (km): "
    Leer distancia
FinFuncion

Funcion tiempo <-  ingresar_tiempo(carro)
    Definir tiempo Como Real
    Escribir "Ingrese el tiempo empleado por el Carro ", carro, " (horas): "
    Leer tiempo
FinFuncion

Funcion velocidad <- Calcular_Velocidad(d, t)
    Definir velocidad Como Real
    velocidad <- d / t
FinFuncion

Funcion  mostrar_Resultado(carro, velocidad)
    Escribir "--------------------------------"
    Escribir "La velocidad promedio del Carro ", carro, " es: ", velocidad, " km/h"
    Escribir "--------------------------------"
FinFuncion


Algoritmo velocidad_dos_carros
    Definir d1, t1, v1 Como Real
    Definir d2, t2, v2 Como Real
    
    // **Carro 1**//
    d1 <- ingresar_distancia(1)
    t1 <- ingresar_tiempo(1)
    v1 <- Calcular_Velocidad(d1, t1)
    mostrar_Resultado(1, v1)
    
    // **Carro 2**//
    d2 <- ingresar_distancia(2)
    t2 <-ingresar_tiempo(2)
    v2 <- Calcular_Velocidad(d2, t2)
    mostrar_Resultado(2, v2)
    
FinAlgoritmo
