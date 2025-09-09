
Funcion  calcular_tiempo_viaje
	
	Definir distancia, velocidad, tiempo_viaje Como Real;
	
	Escribir "Ingrese la distancia total del viaje (en km):";
	Leer distancia;
	
	Escribir "Ingrese la velocidad promedio del coche (en km/h):";
	Leer velocidad;
	
	
	Si velocidad > 0 Entonces
		tiempo_viaje = distancia / velocidad;
		Escribir "El tiempo estimado de viaje es de ", tiempo_viaje, " horas.";
	SiNo
		Escribir "Error: La velocidad no puede ser cero. Intente de nuevo.";
	FinSi
	
FinFuncion


Algoritmo simulador_de_viaje
	
	Definir total_viajes Como Entero;
	Definir continuar_viajando Como Logico;
	
	total_viajes = 0;
	continuar_viajando = Verdadero;
	
	Escribir "¡Bienvenido al simulador de viaje en coche!";
	
	Mientras (continuar_viajando) Hacer
		
		total_viajes = total_viajes + 1;
		Escribir "---";
		Escribir "Viaje #", total_viajes;
		
		
		calcular_tiempo_viaje();
		
		
		Escribir "---";
		Escribir "¿Desea simular otro viaje? (1 = Sí, 0 = No)";
		Leer otro_viaje;
		
		Si otro_viaje == 0 Entonces
			Escribir "Saliendo del programa.";
			continuar_viajando = Falso; 
		FinSi
		
	FinMientras
	
	Escribir "---";
	Escribir "Simulación terminada. Se simularon ", total_viajes, " viajes.";
	
FinAlgoritmo


