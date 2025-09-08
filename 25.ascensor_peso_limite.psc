
Funcion peso_valido <- validar_peso(peso)
    Definir peso_maximo Como Real
    peso_maximo <- 200.0
	
    Si peso <= peso_maximo Entonces
		peso_valido <- Verdadero
    Sino
		peso_valido <- Falso
    Fin Si
Fin Funcion

Funcion es_valido <- validar_piso(piso)
    Definir piso_minimo, piso_maximo Como Entero
    piso_minimo <- 1
    piso_maximo <- 10
	
    Si (piso >=  piso_minimo) Y (piso <= piso_maximo) Entonces
        es_valido <- Verdadero
    Sino
        es_valido <- Falso
    Fin Si
Fin Funcion

Funcion simular_movimiento(piso_destino, piso_origen)
    Si piso_destino > piso_origen Entonces
        Escribir "Ascensor moviendose. Subiendo al piso ", piso_destino, "..."
    Sino
        Escribir "Ascensor moviendose. Bajando al piso ", piso_destino, "..."
    Fin Si
    Escribir "¡Ha llegado a su destino!"
Fin Funcion

Algoritmo ascensor_peso_limite
  
    Definir pesoUsuario Como Real
    Definir pisoDeseado Como Entero
    Definir pesoValido Como Logico
    Definir pisoValido Como Logico
    Definir pisoActual Como Entero
	
    
    piso_actual <- 1
    
    // Entrada de datos del usuario
    Escribir "Bienvenido al simulador de ascensor con límite de peso."
    Escribir "El peso máximo permitido es de 200 kg."
    Escribir "Ingrese su peso en kilogramos: "
    Leer pesoUsuario
    Escribir "Ingrese el piso al que desea ir (del 1 al 10): "
    Leer piso_deseado
	
    
    peso_valido <- validar_peso(peso_usuario)
    piso_valido <- validar_piso(piso_deseado)
	
    // Verificación de ambas condiciones
    Si peso_valido Y piso_valido Entonces
        Escribir "Peso y piso validos. El ascensor esta en movimiento."
        simular_movimiento(piso_deseado,  piso_actual)
    Sino
        Si No peso_valido Entonces
            Escribir "¡El ascensor esta sobrecargado! No puede continuar."
        FinSi
        Si No piso_valido Entonces
            Escribir "Error: El piso ingresado no es valido. Por favor, ingrese un numero del 1 al 10."
        FinSi
    FinSi
FinAlgoritmo
