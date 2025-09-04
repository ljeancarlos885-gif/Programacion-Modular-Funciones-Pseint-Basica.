Funcion c <- compra
	Escribir "ingresa el precio de la compra"
	Leer c
FinFuncion


Funcion d <- descuento
	Escribir "ingresa el descuento que tiene este producto ejemplo 10% = 0.10, 20=0.20"
	Leer d
FinFuncion

Funcion dc <- dcompra (a,b)
	dc <-  a * b
FinFuncion

Funcion resultado <- descompra (a,b)
	resultado <- a - dcompra(a, b)
FinFuncion

Funcion mostrarresultado( res)
	escribir "el precio de la compra menos el descuento es " , res
FinFuncion
Algoritmo aplicar_descuento_compra
	Definir c, d, prefinal Como Real
	
	c <- compra()
	d <- descuento()
	
	
prefinal<- descompra (c,d)
mostrarresultado(prefinal)
FinAlgoritmo
