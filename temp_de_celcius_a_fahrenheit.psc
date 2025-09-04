Funcion c <- celcius
	Escribir "escriba la temperatura " " C°"
	leer c
FinFuncion

Funcion  convf <- fahrenheit (a)
	convf <- 1.8 * a + 32
FinFuncion

Funcion tempfahrenheit (te)
	Escribir "al convertir celcus a fahrenheit nos da ",(te) " F°"
FinFuncion
Algoritmo temp_de_celcius_a_fahrenheit 
	
	cel<-celcius()
	temp<-fahrenheit (cel)
	tempfahrenheit(temp)
FinAlgoritmo
