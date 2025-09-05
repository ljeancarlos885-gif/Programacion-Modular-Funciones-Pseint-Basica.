Funcion compra <- ingresar_precio_compra
	Definir compra Como Real
	Escribir "ingresa el precio de la compra"
	Leer compra
FinFuncion

//ejemplo 10% = 0.10, 20=0.20 para quel usuario saque el descuento"
Funcion compra <- ingresar_descuento_compra
	Definir compra Como Real
	Escribir "ingresa el descuento que tiene este producto ejemplo 10% = 0.10, 20=0.20"
	Leer compra
FinFuncion

Funcion descuento <- obtener_descuento_compra(a,b)
	descuento <-  a * b
FinFuncion

Funcion precio_final <- aplicar_descuento_compra(a,b)
	Definir precio_final Como Real
	precio_final <- a -  (a * b)
FinFuncion

Funcion mostrarresultado( res)
	escribir "el precio de la compra menos el descuento es " , res
FinFuncion
Algoritmo aplicar_descuento_a_compra
	Definir compra, descuento, prefinal Como Real
	
	compra <- ingresar_precio_compra()
	descuento <- ingresar_descuento_compra()
	
	prefinal<- aplicar_descuento_compra(compra, descuento)
	mostrarresultado(prefinal)
FinAlgoritmo