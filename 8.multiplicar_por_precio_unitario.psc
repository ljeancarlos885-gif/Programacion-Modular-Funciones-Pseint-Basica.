Funcion precio <- obtener_precio_por_unidad
	Escribir "ingresa el precio por unidad"
	Leer  precio
FinFuncion

Funcion cantidad <- obtener_cantidad_productos
	Escribir "ingresa la cantidad"
	Leer cantidad
FinFuncion

Funcion iva <-  obtener_iva
	Escribir "ingresa el  iva"
	Leer iva
FinFuncion

Funcion ive <- calcular_iva(a,b,c)
	ive <-  a * b * c
FinFuncion

Funcion resultado <- obtener_precio_final(a,b,c)
	resultado <- (a * b) +  calcular_iva(a,b,c)
FinFuncion

Funcion mostrarresultado( res)
	escribir "el precio total con el iva incluido es " , res
FinFuncion
Algoritmo multiplicar_por_precio_unitario
	Definir pre, cant, i ,preciototal Como Real
	
	precio <- obtener_precio_por_unidad()
	cantidad <- obtener_cantidad_productos()
	iva <- obtener_iva()
	
	preciototal <- obtener_precio_final(precio,cantidad,iva)
	mostrarresultado(preciototal)

	FinAlgoritmo
