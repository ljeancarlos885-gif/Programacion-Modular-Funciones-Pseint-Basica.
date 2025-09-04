
Funcion nombre <- PedirNombre
    Definir nombre Como Cadena
    Escribir "Ingresa tu nombre:"
    Leer nombre
FinFuncion


Funcion apellido <- PedirApellido
    Definir apellido Como Cadena
    Escribir "Ingresa tu apellido:"
    Leer apellido
FinFuncion


Funcion  MostrarMensaje(nombre, apellido)
    Escribir "¡Bienvenido, ", nombre, " ", apellido, ""
FinFuncion

Algoritmo nombre_apellido
    Definir nombre, apellido Como Cadena
	
    nombre <- PedirNombre()
    apellido <- PedirApellido()
    MostrarMensaje(nombre, apellido)
FinAlgoritmo
