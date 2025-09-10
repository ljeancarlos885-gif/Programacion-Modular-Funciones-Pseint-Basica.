
Funcion nombre <- Leer_nombre
    Definir nombre Como Cadena
    Escribir "Ingrese el nombre del producto: "
    Leer nombre
    nombre_leido <- nombre
FinFuncion

Funcion precio <- Leer_Precio
    Definir precio Como Real
    Escribir "Ingrese el precio del producto: "
    Leer precio
    precio_leido <- precio
FinFuncion

Funcion total_final <- Sumar_total(precio_producto, total_actual)
    total_final <- total_actual + precio_producto
FinFuncion

Funcion contador_final <- contar_producto(contador_actual)
    contador_final <- contador_actual + 1
FinFuncion

Algoritmo Registro_de_ventas
    
	Definir continuar Como Cadena
    Definir total_ventas Como Real
    Definir cantidad_productos Como Entero
    Definir nombre_producto Como Cadena
    Definir precio_producto Como Real
    
	total_ventas <- 0
    cantidad_productos <- 0
    
    Repetir
       
        nombre_producto <- Leer_nombre()
        precio_producto <- Leer_Precio()
        
        total_ventas <- Sumar_total(precio_producto, total_ventas)
        cantidad_productos <- contar_producto(cantidad_productos)
        
        Escribir "Producto registrado: ", nombre_producto, " - Precio: $", precio_producto
        
        Escribir "¿Desea ingresar otro producto? (S/N): "
        Leer continuar
    Hasta Que (continuar) = "N"
    
    Escribir ""
    Escribir "Resumen de ventas:"
    Escribir "Cantidad de productos vendidos: ", total_ventas
    Escribir "Total de ventas: $", totalVentas
FinAlgoritmo

