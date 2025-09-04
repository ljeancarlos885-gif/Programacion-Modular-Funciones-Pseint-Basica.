
Funcion edad_cliente <- tomar_edad
    Definir edad_cliente como Cadena
    Escribir "Ingrese su edad:"
    Leer edad_cliente
FinFuncion


Funcion mensaje <- crear_saludo(dato_edad)
    Definir mensaje como Cadena
    mensaje <- "Tienes  " +  dato_edad  
FinFuncion


Funcion  imprimir_saludo(dato_saludo)
    Escribir dato_saludo " años"
FinFuncion


Algoritmo edad
    Definir dato_edad, dato_mensaje como Cadena
	
    dato_edad <- tomar_edad()
    dato_mensaje <- crear_saludo(dato_edad)
    imprimir_saludo(dato_mensaje)
FinAlgoritmo
