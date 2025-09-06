Funcion peso <- ingresar_peso(persona)
    Definir peso Como Real
    Escribir "Ingrese el peso (kg) de la Persona ", persona, ": "
    Leer peso
FinFuncion

Funcion altura <- ingresar_altura(persona)
    Definir altura Como Real
    Escribir "Ingrese la altura  de la Persona ", persona, ": "
    Leer altura
FinFuncion

Funcion imc <- Calcular_imc(a, b)
    Definir imc Como Real
    imc <- a / b^2
FinFuncion

Funcion mostrar_imc(persona, imc)
   
    Escribir "El imc de la Persona ", persona, " es: ", imc
 
FinSubProceso

Algoritmo imc_de_dos_personas
    Definir peso_1, altura_1, imc_1 Como Real
    Definir peso_2, altura_2, imc_2 Como Real
    
    // Persona 1 //
    peso_1 <- ingresar_peso(1)
    altura_1 <- ingresar_altura(1)
    imc_1 <- Calcular_imc(peso_1, altura_1)
    mostrar_imc( 1, imc_1)
    
    // Persona 2 //
    peso_2 <- ingresar_peso(2)
    altura_2 <-ingresar_altura(2)
    imc_2 <- Calcular_imc(peso_2, altura_2)
	mostrar_imc(2, imc_2)
    
FinAlgoritmo
