
Funcion retorno <- obtener_costo_producto
	Definir precio, cantidad, costo_producto Como Real;
	
	Escribir "Ingrese el precio del producto:";
	Leer precio;
	
	Escribir "Ingrese la cantidad que desea comprar:";
	Leer cantidad;
	
	costo_producto = precio * cantidad;
	
	Escribir "El costo de este producto es: ", costo_producto;
	
	retorno = costo_producto;
FinFuncion


Funcion mostrar_total(total_final)
	
	Escribir "---";
	Escribir "El costo total de su compra es: ", total_final;
	Escribir "¡Gracias por su compra!";
FinFuncion


Algoritmo SimularCompra
	
	Definir total_compra, agregar_mas Como Real;
	
	total_compra = 0;
	
	Escribir "¡Bienvenido a nuestra tienda en línea!";
	
	// Bucle para agregar productos
	Mientras (verdadero) Hacer
		total_compra = total_compra + obtener_costo_producto();
		
		Escribir "¿Desea agregar otro producto? (1 = Sí, 0 = No)";
		Leer agregar_mas;
		
		Si agregar_mas == 0 Entonces
			Escribir Salir del bucle;
		FinSi
	FinMientras
	
	
	mostrar_total(total_compra);
	
FinAlgoritmo