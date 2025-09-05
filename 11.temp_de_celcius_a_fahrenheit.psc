
Funcion celcius <- leer_temperatura
	definir celcius como entero
		Escribir "escriba la temperatura " " C°"
		leer celcius
FinFuncion

Funcion  resultado <- convertir_celcius_farenheit(a)
	resultado <- 1.8 * a + 32
FinFuncion

Funcion temperatura_fahrenheit(temperatura)
	Escribir "al convertir ", a " celcius a fahrenheit nos da ",temperatura " F°"
FinFuncion
Algoritmo temp_de_celcius_a_fahrenheit 
	definir temp,celcius  como entero
	celcius <- leer_temperatura()
	temp <- convertir_celcius_farenheit(celcius)
	temperatura_fahrenheit(temp)
FinAlgoritmo

