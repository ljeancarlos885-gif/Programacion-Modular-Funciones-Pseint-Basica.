
Funcion retorno <- obtener_temperatura
	
	Definir temp Como Real;
	
	Escribir "---";
	Escribir "Ingrese la temperatura actual:";
	Leer temp;
	
	retorno = temp;
	
FinFuncion

Funcion retorno <- verificar_temperatura(temp)
	
	
	Si (temp >= 18.0) Y (temp <= 25.0) Entonces
		retorno = Verdadero;
	SiNo
		Escribir "¡ALERTA! La temperatura de ", temp, " esta fuera del rango.";
		retorno = Falso;
	FinSi
	
FinFuncion

Algoritmo sensor_de_temperatura
	
	Definir temperatura Como Real;
	
	Escribir "---";
	Escribir "¡Bienvenido al simulador de sensor de temperatura!";
	Escribir "El rango aceptable es entre 18.0 y 25.0 grados Celsius.";
	
	Repetir
		
		temperatura = obtener_temperatura();
		
	Hasta Que verificar_temperatura(temperatura);
	
	Escribir "---";
	Escribir "¡Alerta desactivada! La temperatura de ", temperatura, " esta dentro del rango aceptable.";
	
FinAlgoritmo

