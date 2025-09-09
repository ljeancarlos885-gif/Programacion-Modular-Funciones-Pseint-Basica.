
Funcion puntos <- obtener_puntos(resultado Por Valor)
    Definir puntos Como Entero;
    Segun resultado Hacer
        "Gana":
            puntos <- 3;
        "Empata":
            puntos <- 1;
        "Pierde":
            puntos <- 0;
        De Otro Modo:
            puntos <- 0;
    FinSegun
FinFuncion

Funcion total_Puntos <- actualizar_clasificacion(puntos_actuales Por Valor, puntos_sumados Por Valor)
    Definir total_puntos Como Entero;
    total_puntos <- puntos_actuales + puntos_sumados;
FinFuncion

Algoritmo clasificacion_campeonato_deportivo
	Definir puntos_local, puntos_visitante Como Entero;
    Definir resultado_Partido Como Caracter;
    Definir puntos_obtenidos Como Entero;
	
  
    puntos_local <- 0;
    puntos_visitante <- 0;
	
    Escribir "--- Sistema de Clasificación de Campeonato ---";
    Escribir "Puntos iniciales: Local = 0, Visitante = 0";
    Escribir "Gana: 3 puntos, Empate: 1 punto, Pierde: 0 puntos";
    Escribir "";
	
  
    Escribir "Ingresa el resultado del partido para el equipo local (Gana, Empata o Pierde):";
    Leer resultado_Partido;
	
   
    puntos_obtenidos <- obtener_puntos(resultado_Partido);
    puntos_local <- actualizar_clasificacion(puntos_local, puntos_obtenidos);
	
   
    Si resultado_Partido = "Gana" Entonces
		puntos_oponente <- obtener_puntos("Pierde");
	Sino
		Si resultado_Partido = "Pierde" Entonces
			puntos_oponente <- obtener_puntos("Gana");
		Sino
			puntos_oponente <- obtener_puntos("Empata");
		FinSi
	FinSi

    puntos_visitante <- actualizar_clasificacion(puntos_visitante, puntos_oponente);
    
    // Mostrar la clasificación actual
    Escribir "";
    Escribir "--- Clasificación Actual ---";
    Escribir "Puntos Equipo Local: ", puntos_local;
    Escribir "Puntos Equipo Visitante: ", puntos_visitante;
    Escribir "----------------------------";
FinAlgoritmo
