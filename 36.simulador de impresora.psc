
Funcion retorno <- procesar_impresion(papel_disponible)
	
	Definir paginas_a_imprimir, papel_restante Como Entero;
	
	Escribir "Ingrese la cantidad de páginas a imprimir:";
	Leer paginas_a_imprimir;
	
	Si paginas_a_imprimir <= papel_disponible Entonces
		
		Escribir "Imprimiendo ", paginas_a_imprimir, " páginas...";
		papel_restante = papel_disponible - paginas_a_imprimir;
		Escribir "Impresión completada. Papel restante: ", papel_restante, " hojas.";
		
		retorno = papel_restante;
		
	SiNo
		
		Escribir "Error: No hay suficiente papel para imprimir ", paginas_a_imprimir, " páginas.";
		Escribir "Papel disponible: ", papel_disponible, " hojas.";
		
		retorno = papel_disponible; 
		
	FinSi
	
FinFuncion

Algoritmo simulador_de_impresora
	
	Definir capacidad_papel, desea_imprimir Como Entero;
	
	capacidad_papel = 50; 
	
	Escribir "¡Bienvenido al simulador de impresora!";
	Escribir "Hay ", capacidad_papel, " hojas de papel disponibles.";
	
	
	Mientras (capacidad_papel > 0) Hacer
		
		Escribir "---";
		Escribir "¿Desea imprimir? (1 = si, 0 = no)";
		Leer desea_imprimir;
		
		Si desea_imprimir == 1 Entonces
			
			
			capacidad_papel = procesar_impresion(capacidad_papel);
			
			Si capacidad_papel <= 0 Entonces
				Escribir "No queda papel en la impresora.";
				
			FinSi
			
		SiNo
			Escribir "Saliendo del programa.";
			
		FinSi
	FinMientras
	
	Escribir "---";
	Escribir "Simulación terminada.";
	
FinAlgoritmo
