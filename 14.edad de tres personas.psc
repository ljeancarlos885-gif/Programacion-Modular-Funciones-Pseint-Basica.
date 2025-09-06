
Funcion anio_actual <- obtener_anio_actual
	Escribir "Ingresar el año actual (ej. 2025):"
	Leer anio_actual
FinFuncion

Funcion anio_nacimiento <- obtener_anio_nacimiento(persona)
	Escribir "Ingresar el año de nacimiento de la persona ", persona, ":"
	Leer anio_nacimiento
FinFuncion

Funcion edad <- calcular_edad(a,b)
	Definir edad Como Entero
	edad <- a - b
FinFuncion



Algoritmo edad_de_tres_personas
	
	
    anio_actual <- obtener_anio_actual()
	
    Definir anio_nac_1, anio_nac_2, anio_nac_3 Como Entero
    Definir edad_1, edad_2, edad_3 Como Entero
	
    anio_nac_1 <- obtener_anio_nacimiento("1")
    edad_1 <- calcular_edad(anio_actual, anio_nac_1)
    
    anio_nac_2 <- obtener_anio_nacimiento("2")
    edad_2 <- calcular_edad(anio_actual, anio_nac_2)
    
    anio_nac_3 <- obtener_anio_nacimiento("3")
    edad_3 <- calcular_edad(anio_actual, anio_nac_3)
	
    Escribir "La edad de la persona 1 es: ", edad_1
    Escribir "La edad de la persona 2 es: ", edad_2
    Escribir "La edad de la persona 3 es: ", edad_3
    
		
FinAlgoritmo

