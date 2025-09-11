
Funcion cantidad <- Leer_cantidad_productos
    Definir cantidad_aux Como Entero
    Repetir
        Escribir "¿Cuántos productos desea registrar?"
        Leer cantidad_aux
        Si cantidad_aux <= 0 Entonces
            Escribir "Debe ingresar un número entero positivo."
        FinSi
    Hasta Que cantidad_aux > 0
    cantidad <- cantidad_aux
FinFuncion

Funcion nombre <- Leer_nombre_producto(indice)
    Definir nombre_aux Como Cadena
    Escribir "Ingrese el nombre del producto ", indice, ":"
    Leer nombre_aux
    nombre <- nombre_aux
FinFuncion

Funcion precio <- Leer_precio_producto(nombre_producto)
    Definir precio_aux Como Real
    Repetir
        Escribir "Ingrese el precio del producto ", nombre_producto, ":"
        Leer precio_aux
        Si precio_aux <= 0 Entonces
            Escribir "El precio debe ser un valor positivo."
        FinSi
    Hasta Que precio_aux > 0
    precio <- precio_aux
FinFuncion

Funcion cantidad_vendida <- Leer_cantidad_vendida(nombre_producto)
    Definir cantidad_aux Como Entero
    Repetir
        Escribir "Ingrese la cantidad vendida del producto ", nombre_producto, ":"
        Leer cantidad_aux
        Si cantidad_aux < 0 Entonces
            Escribir "La cantidad vendida no puede ser negativa."
        FinSi
    Hasta Que cantidad_aux >= 0
    cantidad_vendida <- cantidad_aux
FinFuncion

Funcion total_producto <- Calcular_total(precio, cantidad_vendida)
    total_producto <- precio * cantidad_vendida
FinFuncion

Funcion total_acumulado <- Sumar_total(total_actual, total_producto)
    total_acumulado <- total_actual + total_producto
FinFuncion

Algoritmo registro_ventas
    Definir cantidad_productos Como Entero
    Definir i Como Entero
    Definir nombre_prod Como Cadena
    Definir precio_prod, total_prod, total_ventas Como Real
    Definir cantidad_vendida_prod Como Entero
	
    total_ventas <- 0
    cantidad_productos <- Leer_cantidad_productos()
	
    Para i <- 1 Hasta cantidad_productos Con Paso 1
        nombre_prod <- Leer_nombre_producto(i)
        precio_prod <- Leer_precio_producto(nombre_prod)
        cantidad_vendida_prod <- Leer_cantidad_vendida(nombre_prod)
        
        total_prod <- Calcular_total(precio_prod, cantidad_vendida_prod)
        total_ventas <- Sumar_total(total_ventas, total_prod)
		
        Escribir "Producto: ", nombre_prod
        Escribir "Precio unitario: $", precio_prod
        Escribir "Cantidad vendida: ", cantidad_vendida_prod
        Escribir "Total producto: $", total_prod
        Escribir "-----------------------------"
    FinPara
	
    Escribir "Resumen de ventas:"
    Escribir "Total ventas: $", total_ventas
FinAlgoritmo
