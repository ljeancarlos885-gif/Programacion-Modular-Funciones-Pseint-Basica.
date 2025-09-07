Funcion cantidad <- ingresar_cantidad_servicio
    Definir cantidad Como entero
	Escribir "Ingrese la cantidad de servicios a pagar: "
    Leer cantidad
FinFuncion

Funcion consumo <- ingresar_consumo_servicio(consumo)
	Escribir "Ingrese el consumo (costo) del servici ",consumo ": "
	Leer consumo
FinFuncion
Funcion total <- multiplicar_cantidad_costo(c, c)
    Definir total Como Real
    total <- c * 3
FinFuncion

Funcion  mostrar_resultado(total)
    Escribir "--------------------------------"
	Escribir "El total a pagar por todos los servicios es: $", total
    Escribir "--------------------------------"
FinFuncion


Algoritmo consumo_total_pagar
   
    
   s1 <- ingresar_cantidad_servicio
   
   c1 <- ingresar_consumo_servicio(1)
	total <- multiplicar_cantidad_costo(s1,c1)
	
	
	c2 <- ingresar_consumo_servicio(2)
	total <- multiplicar_cantidad_costo(s1,c2)
	c3 <- ingresar_consumo_servicio(3)
	total <- multiplicar_cantidad_costo(s1,c3)
	
	mostrar_Resultado(total)
    
FinAlgoritmo
