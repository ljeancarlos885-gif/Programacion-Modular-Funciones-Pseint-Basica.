
Funcion es_valido <- validar_cantidad(cantidad)
    Si cantidad > 0 Entonces
        es_valido <- Verdadero
    Sino
        es_valido <- Falso
    FinSi
Fin Funcion

Funcion precio <- obtener_precio_base(tipo)
    Segun tipo Hacer
        "A":
            precio <- 50
        "V":
            precio <- 120
        "E":
            precio <- 500
        De Otro Modo:
            precio <- 0 
    Fin Segun
Fin Funcion

Funcion total <- calcular_total_sin_descuento(precio_unitario, unidades)
    total <- precio_unitario * unidades
Fin Funcion

Funcion total_con_descuento <- calcular_total_con_descuento(subtotal, tipo)
    Definir descuento Como Real
    
  
    Si tipo = "A" Entonces
        descuento <- subtotal * 0.10 
    Sino
        Si tipo = "V" Entonces
            descuento <- subtotal * 0.05 
        Sino
            descuento <- 0 
        FinSi
    FinSi
    
    total_con_descuento <- subtotal - descuento
Fin Funcion

Algoritmo calcular_compra_con_tres_tipos_de_productos
   
    Definir tipo_producto Como Caracter
    Definir cantidad Como Entero
    Definir precio_base, precio_sin_descuento, precio_con_descuento Como Real
    Definir es_cantidad_valida Como Logico 
	
    
    Escribir "Bienvenido a la tienda."
    Escribir "Tipos de productos: (A alimentos) (V vestimenta) (E electronicos)"
    Escribir "Ingrese el tipo de producto (A, V o E):"
    Leer tipo_producto
    Escribir "Ingrese la cantidad de unidades:"
    Leer cantidad
    
    
    es_cantidad_valida <- validar_cantidad(cantidad) 
    
    Si es_cantidad_valida Entonces
       
        precio_base <- obtener_precio_base(tipo_producto) 
      
        precio_sin_descuento <- calcular_total_sin_descuento(precio_base, cantidad)
        
       
        precio_con_descuento <- calcular_total_con_descuento(precio_sin_descuento, tipo_producto) 
        
        
        Escribir "------------------------------------"
        Escribir "Resumen de la compra:"
        Escribir "Costo sin descuento: ", precio_sin_descuento, " $"
        Escribir "Costo con descuento: ", precio_con_descuento, " $"
    Sino
        Escribir "Error: La cantidad de unidades debe ser un numero positivo."
    FinSi
FinAlgoritmo
