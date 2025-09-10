

Funcion lista_productos_actualizada <- agregar_productos(lista_acumulada Por Referencia, cantidad)
    Definir nombre_producto Como Caracter
    Definir i Como Entero
    Definir lista_productos_actualizada Como Caracter
    
    Para i <- 1 Hasta cantidad Con Paso 1 Hacer
        Escribir ""
        Escribir "Ingrese el nombre del producto ", i, ":"
        Leer nombre_producto
        
        lista_acumulada <- lista_acumulada + " - " + nombre_producto + ""
    FinPara
    
    lista_productos_actualizada <- lista_acumulada
FinFuncion

Funcion total_compra_actualizada = calcular_total(total_acumulado Por Referencia, cantidad)
    Definir precio_producto Como Real
    Definir i Como Entero
    Definir total_compra_actualizada Como Real
    
    Para i <- 1 Hasta cantidad Con Paso 1 Hacer
        Escribir ""
        Escribir "Ingrese el precio del producto ", i, ":"
        Leer precio_producto
        
        total_acumulado <- total_acumulado + precio_producto
    FinPara
    
    total_compra_actualizada <- total_acumulado
FinFuncion

Funcion mostrar_resumen(lista_productos, total_compra)
    Escribir ""
    Escribir "-----------------------------------"
    Escribir "Resumen de su compra:"
    Escribir "-----------------------------------"
    Escribir "Productos en el carrito:"
    Escribir lista_productos
    Escribir ""
    Escribir "Total a pagar: $", total_compra
FinFuncion

Algoritmo tienda_virtual
    Definir lista_productos Como Caracter
    Definir total_compra, num_productos Como Real
    
    lista_productos <- ""
    total_compra <- 0
    
    Escribir "Ingrese la cantidad de productos que desea comprar:"
    Leer num_productos
    
    lista_productos <- agregar_productos(lista_productos, num_productos)
    total_compra <- calcular_total(total_compra, num_productos)
    
    mostrar_resumen(lista_productos, total_compra)
    
FinAlgoritmo
