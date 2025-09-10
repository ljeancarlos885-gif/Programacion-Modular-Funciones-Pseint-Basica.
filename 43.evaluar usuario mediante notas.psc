
Funcion  nota_ingresada <- ingresar_nota
	Definir nota Como Real
	Escribir Sin Saltar "Ingrese una nota (0 - 10): "
	Leer nota
	nota_ingresada <- nota // Retorna el valor ingresado
FinFuncion

Funcion promedio <- calcular_promedio(suma, cantidad)
	Definir promedio_calc Como Real
	Si cantidad > 0 Entonces
		promedio<- suma / cantidad
	SiNo
		promedio <- 0
	FinSi
FinFuncion

Funcion es_aprobado <- aprobado(promedio)
	Definir es_aprobado Como Logico
	es_aprobado <- promedio >= 6
FinFuncion

Funcion desea_otra <- desea_ingresar_otra_nota
	Definir opcion Como Caracter
	Escribir Sin Saltar "¿Desea ingresar otra nota? (S/N): "
	Leer opcion
	desea_otra <- (opcion = "S") o (opcion = "s")
FinFuncion

Algoritmo evaluar_usuario_mediante_notas
	Definir nota, suma, promedio Como Real
	Definir cantidad Como Entero
	Definir continuar Como Logico
	
	suma <- 0
	cantidad <- 0
	continuar <- Verdadero
	
	Mientras continuar Hacer
		nota <- ingresar_nota
		
		si nota >= 0 y nota <= 10 Entonces
			suma <- suma + nota
			cantidad <- cantidad + 1
		SiNo
			Escribir "Nota no valida. Debe estar entre 0 y 10."
		FinSi
		
		continuar <- desea_ingresar_otra_nota
	FinMientras
	
	si cantidad > 0 Entonces
		promedio <- calcular_promedio(suma, cantidad)
		Escribir "Promedio: ", promedio
		
		si aprobado(promedio) Entonces
			Escribir "Estado: Aprobado"
		SiNo
			Escribir "Estado: Reprobado"
		FinSi
	SiNo
		Escribir "No se ingresaron notas validas."
	FinSi
FinAlgoritmo