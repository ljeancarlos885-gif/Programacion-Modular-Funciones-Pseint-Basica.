
Funcion subtotal <- calcular_subtotal(c, p)
    subtotal <- c * p
Fin Funcion

Funcion impuesto <- calcular_impuesto_por_tipo(s, e)
    Si es_estudiante Entonces
        impuesto <- s * 0.05
    Sino
        impuesto <- s * 0.13
    Fin Si
Fin Funcion

Funcion total <- calcular_total(s, i)
    total <- s + i
Fin Funcion



Algoritmo Factura_si_estudiante
	
    Definir nombreCliente Como Caracter
    Definir producto Como Caracter
    Definir cantidad Como Entero
    Definir precioUnitario Como Real
    Definir esEstudiante Como Logico
    Definir tipoCliente Como Caracter
    
    nombre_cliente <- "Ana Ramírez"
    producto <- "Laptop"
    cantidad <- 1
    precio_unitario <- 850.50
    es_estudiante <- Verdadero
    tipocliente <- "A"
    
   
    Definir subtotal, impuesto, total Como Real
    subtotal <- calcular_subtotal(cantidad, precioUnitario)
    impuesto <- calcular_impuesto_por_tipo(subtotal, esEstudiante)
    total <- calcular_total(subtotal, impuesto)
    
   
    Escribir "--- Factura ---"
    Escribir "Cliente: ", nombreCliente
    Escribir "Tipo de cliente: ", tipoCliente
    Escribir "Producto: ", producto
    Escribir "Cantidad: ", cantidad
    Escribir "Precio unitario: ", precioUnitario, " $"
    Escribir "Es estudiante: ", esEstudiante
    Escribir "--------------------"
    Escribir "Subtotal: ", subtotal, " $"
    Escribir "Impuesto: ", impuesto, " $"
    Escribir "Total a pagar: ", total, " $"
    
FinAlgoritmo