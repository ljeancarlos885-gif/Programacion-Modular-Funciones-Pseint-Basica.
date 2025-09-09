
Funcion retorno <- obtener_numero_secreto
	Definir num_secreto Como Entero;
	
	num_secreto = Aleatorio(1, 100);
	
	retorno = num_secreto;
FinFuncion

Funcion retorno <- verificar_intento(num_secreto)
	Definir intento Como Entero;
	
	Escribir "---";
	Escribir "Ingresa tu intento:";
	Leer intento;
	
	Si intento == num_secreto Entonces
		Escribir "¡Felicidades! ¡Has adivinado el numero secreto!";
		retorno = Verdadero;
	SiNo
		Si intento > num_secreto Entonces
			Escribir "¡El numero secreto es menor! Intenta de nuevo.";
		SiNo
			Escribir "¡El numero secreto es mayor! Intenta de nuevo.";
		FinSi
		retorno = Falso;
	FinSi
FinFuncion

Algoritmo adivina_el_numero
	
	Definir numero_secreto, intento Como Entero;
	Definir adivinado Como Logico;

	numero_secreto = obtener_numero_secreto();
	
	adivinado = Falso;
	
	Escribir "---";
	Escribir "¡Bienvenido al juego de adivinanza!";
	Escribir "He pensado en un numero entre 1 y 100.";
	Escribir "¡Intenta adivinarlo!";
	
	Mientras (no adivinado) Hacer
		
		adivinado = verificar_intento(numero_secreto);
		
	FinMientras
	
	Escribir "---";
	Escribir "Fin del juego.";
	
FinAlgoritmo