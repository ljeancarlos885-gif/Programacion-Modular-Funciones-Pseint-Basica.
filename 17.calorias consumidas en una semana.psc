Funcion calorias <- ingresar_calorias_dia(dia)
    Definir calorias Como Real
    Escribir "Ingrese las calorías consumidas el día ", dia, ":"
    Leer calorias
    
FinFuncion

Funcion total <- sumar_calorias_semana
    Definir c1, c2, c3, c4, c5, c6, c7, total Como Real
	
    c1 <- ingresar_calorias_dia("Lunes")
    c2 <- ingresar_calorias_dia("Martes")
    c3 <- ingresar_calorias_dia("Miércoles")
    c4 <- ingresar_calorias_dia("Jueves")
    c5 <- ingresar_calorias_dia("Viernes")
    c6 <- ingresar_calorias_dia("Sábado")
    c7 <- ingresar_calorias_dia("Domingo")
	
    total <- c1 + c2 + c3 + c4 + c5 + c6 + c7
  
FinFuncion

Algoritmo calorias_semana
    Definir total_semanal Como Real
	
    total_semana <- sumar_calorias_semana()
	Escribir "El total de calorías consumidas en la semana es: ", total_semanal
FinAlgoritmo
