Funcion mensaje(verdader)
	Escribir verdader
Fin Funcion

Funcion  verdader <- fals(bool)
	Definir verdaderoo Como Caracter;
	Si bool = "si" o bool = "si" Entonces
		Escribir " esta persona es estudiante"
	SiNo
		Escribir " no perteneces a ningun tipo de institucion educativa";
	Fin Si
Fin Funcion

Funcion bool <- es_estudiante
	Definir bool Como cadena;
	Escribir " ¿es usted estudiante? [verdadero=si/falso=no]"
	Leer bool
Fin Funcion

Algoritmo estudiante_falso_verdadero
	
	Definir s,dato_persona  Como Caracter;
	
	dato_persona <- es_estudiante
	s <- fals(dato_persona)
	mensaje(verdaderoo)
FinAlgoritmo
