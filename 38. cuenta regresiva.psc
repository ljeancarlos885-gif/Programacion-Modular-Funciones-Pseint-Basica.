
Funcion retorno <- solicitar_numero
	Definir numero Como Entero;
	Definir numero_valido Como Logico;
	
	numero_valido = Falso;
	
	Mientras (no numero_valido) Hacer
		Escribir "Ingrese un numero entero positivo para la cuenta regresiva:";
		Leer numero;
		
		Si numero > 0 Entonces
			retorno = numero;
			Escribir "---";
			Escribir "Iniciando la cuenta regresiva desde ", numero, "...";
			numero_valido = Verdadero;
		SiNo
			Escribir "Error: Debe ingresar un numero positivo. Intente de nuevo.";
		FinSi
	FinMientras
	
FinFuncion

Funcion  realizar_cuenta_regresiva(numero)
	
	Mientras (numero >= 0) Hacer
		Escribir numero;
		numero = numero - 1;
		
		Esperar 1 Segundos;
	FinMientras
	
	Escribir "¡Tiempo cumplido!";
	
FinFuncion


Algoritmo cuenta_regresiva
	
	Definir numero_inicial Como Entero;
	
	Escribir "---";
	Escribir "¡Bienvenido al programa de cuenta regresiva!";
	
	numero_inicial = solicitar_numero();
	
	realizar_cuenta_regresiva(numero_inicial);
	
FinAlgoritmo
