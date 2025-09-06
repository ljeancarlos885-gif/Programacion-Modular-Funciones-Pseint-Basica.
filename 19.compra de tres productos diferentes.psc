Funcion calorias <- ingresar_producto_a_comprar(compra)
    Definir calorias Como Real
    Escribir "Ingrese el producto ", compra " a comprar:"
    Leer calorias
    
FinFuncion

Funcion total <- sumar_compras
    Definir p1, p2, p3, total Como Real
	
    p1 <- ingresar_producto_a_comprar("1")
    p2 <- ingresar_producto_a_comprar("2")
    p3 <- ingresar_producto_a_comprar("3")
	
    total <- p1 + p2 + p3 
FinFuncion

Algoritmo compra_de_tres_productos_diferentes
    Definir total_semanal Como Real
	
    total_pagar <- sumar_compras()
	Escribir "El total de campras de los tres productos es: ","$ " total_pagar
FinAlgoritmo
