
Funcion precio_producto <- tomar_precio
	Definir precio_producto Como Real
    precio_producto  <- 20.5
FinFuncion

Funcion mensaje <- crear_saludo(dato_precio)
    Definir mensaje Como Cadena
    mensaje <- "El precio del articulo es: " + ConvertirATexto(dato_precio)
FinFuncion

Funcion  imprimir_saludos(dato_mensaje)
    Escribir dato_mensaje
FinFuncion


Algoritmo precio_articulo
    Definir dato_mensaje Como Cadena
	Definir dato_precio Como Real
    dato_precio <- tomar_precio()
    dato_mensaje <- crear_saludo(dato_precio)
    imprimir_saludos(dato_mensaje)
FinAlgoritmo