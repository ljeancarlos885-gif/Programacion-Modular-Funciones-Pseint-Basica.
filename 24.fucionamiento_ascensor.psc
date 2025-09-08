// --- Funciones del Programa ---

Funcion Valido <- validar_piso(piso)
    Definir piso_minimo, piso_maximo Como Entero
    piso_minimo <- 1
    piso_maximo <- 10
    
    Si (piso >=  piso_minimo) Y (piso <=   piso_maximo) Entonces
        Valido <- Verdadero
    Sino
        Valido <- Falso
    Fin Si
Fin Funcion

Funcion simular_movimiento(piso_destino, piso_origen)
    Si piso_destino >  piso_origen Entonces
        Escribir "Ascensor moviéndose. Subiendo al piso ", piso_destino, "..."
    Sino
        Escribir "Ascensor moviéndose. Bajando al piso ", piso_destino, "..."
    Fin Si
    
    Escribir "¡Ha llegado a su destino!"
Fin Funcion

Algoritmo fucionamiento_ascensor
   
    Definir piso_deseado Como Entero
    Definir piso_actual Como Entero
    Definir Valido Como Logico
    
    piso_actual <- 1
    
    Escribir "Bienvenido al simulador de ascensor."
    Escribir "actualmente se encuentra en el piso ", piso_actual
    Escribir "Ingrese el piso al que desea ir (del 1 al 10): "
    Leer piso_deseado
    
    
    Valido <- validar_piso(piso_deseado)
    
    Si Valido Entonces

        simular_movimiento(piso_deseado, piso_actual)
    Sino
        Escribir "Error: El piso ingresado no es válido. Por favor, ingrese un número del 1 al 10."
    FinSi
FinAlgoritmo
