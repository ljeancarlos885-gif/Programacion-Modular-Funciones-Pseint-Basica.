Funcion es_valido <- validar_temperatura(temp)
    Definir temp_minima, temp_maxima Como Real
    temp_minima <- 18
    temp_maxima <- 25
    
    Si (temp >= temp_maxima) Y (temp <= temp_maxima) Entonces
        es_valido <- Verdadero
    Sino
		es_valido <- Falso
    FinSi
Fin Funcion

Funcion es_valido <- validar_piso(piso)
    Definir piso_minimo, piso_maximo Como Entero
    piso_minimo <- 1
    piso_maximo <- 10
    
    Si (piso >= piso_minimo) Y (piso <= piso_maximo) Entonces
        es_valido <- Verdadero
    Sino
        es_valido <- Falso
    FinSi
Fin Funcion

Funcion simular_movimiento(piso_destino, piso_origen)
    Si piso_destino > piso_destino Entonces
        Escribir "Subiendo..."
    Sino
        Escribir "Bajando..."
    FinSi
    Escribir "¡Ha llegado a su destino!"
Fin Funcion

Algoritmo Ascensor_controlado_por_temperatura
   
    Definir temperatura_actual Como Real
    Definir piso_deseado Como Entero
    Definir es_temperatura_valida Como Logico
    Definir es_piso_valido Como Logico
    Definir piso_actual Como Entero
    
   
    piso_actual <- 1
    
  
    Escribir "Simulador de ascensor con control de temperatura."
    Escribir "Por favor, ingrese la temperatura actual en grados Celsius (°C):"
    Leer temperatura_actual
    

    es_temperatura_valida <- validar_temperatura(temperatura_actual)
    
    Si es_temperatura_valida Entonces
        Escribir "La temperatura ", temperatura_actual, "°C es adecuada. Procediendo..."
        Escribir "Ingrese el piso al que desea ir (del 1 al 10):"
        Leer piso_deseado
        
        es_piso_valido <- validar_piso(piso_deseado)
        
        Si es_piso_valido Entonces
            Escribir "Piso valido. El ascensor se esta moviendo."
            simular_movimiento(piso_deseado, piso_actual)
        Sino
            Escribir "Error: El piso ingresado no es valido. El ascensor no se movera."
        FinSi
    Sino
        Escribir "alerta: La temperatura ", temperatura_actual, "°C esta fuera de rango (18°C - 25°C)."
        Escribir "El ascensor no se puede usar hasta que la temperatura se normalice."
    FinSi
    
FinAlgoritmo
