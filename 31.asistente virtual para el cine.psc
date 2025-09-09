
Funcion rango_edad <- clasificar_edad(edad )
    Definir rango_edad Como Entero;
	
    Si edad < 7 Entonces
        rango_edad <- 1; 
		Sino Si edad >= 7 y edad <= 17 Entonces
        rango_edad <- 2; 
		Sino Si edad >= 18 y edad <= 30 Entonces
        rango_edad <- 3; 
    Sino
        rango_edad <- 4; 
		FinSi
	FinSi
FinSi

FinFuncion

Funcion recomendacion_final <- ObtenerRecomendacion(edad Por Valor)
    Definir recomendacion_final Como Caracter;
    Definir rango_edad Como Entero;
	
    rango_edad <- clasificar_edad(edad);
	
    Segun rango_edad Hacer
        1:
            recomendacion_final <- "Pel�culas animadas y educativas aptas para todas las edades.";
        2:
            recomendacion_final <- "Pel�culas adecuadas para la familia, como animaciones, aventuras y comedias familiares.";
        3:
            recomendacion_final <- "Una variedad de g�neros, como acci�n, drama, comedia y ciencia ficci�n.";
        4:
            recomendacion_final <- "Pel�culas cl�sicas y dramas que pueden ser de tu inter�s.";
    FinSegun

FinFuncion

Algoritmo asistente_virtual_para_el_cine
	Definir edad Como Entero
    Definir recomendacion Como Caracter
	
    // 1. Solicitar la edad al usuario
    Escribir "�Bienvenido al asistente de cine! "
    Escribir "Por favor, ingresa tu edad:"
    Leer edad;
	
   
    recomendacion <- obtenerRecomendacion(edad)
	
   
    Escribir "";
    Escribir "--- Recomendaci�n de Pel�cula ---"
    Escribir "Basado en tu edad, te recomendamos la siguiente categor�a de pel�culas:";
    Escribir recomendacion;
    Escribir "----------------------------"
	
FinAlgoritmo
