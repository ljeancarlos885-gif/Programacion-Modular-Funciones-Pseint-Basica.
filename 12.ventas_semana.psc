Funcion ventas <- ingresar_ventas_dia(dia)
    Escribir "Ingresar ventas dia ",dia, ":"
    Leer ventas
FinFuncion
Funcion ingresos <- calcular_ventas(a,b,c,d,e)
	ingresos <- a + b + c + d + e
FinFuncion


Algoritmo ventas_semana
	
	vent_l <- ingresar_ventas_dia("lunes")
	vent_m <- ingresar_ventas_dia("martes")
	vent_mr <- ingresar_ventas_dia("miercoles")
	vent_j <- ingresar_ventas_dia("jueves")
	vent_v <- ingresar_ventas_dia("viernes")

ventas <- calcular_ventas(vent_l ,vent_m,vent_mr,vent_j ,vent_v)
Escribir ventas
FinAlgoritmo
