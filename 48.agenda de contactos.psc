
Funcion lista_actualizada <- registrar_contactos(lista_acumulada Por Referencia, cantidad)

	Definir nombre_contacto, telefono_contacto Como Caracter
	Definir i Como Entero
	Definir lista_actualizada Como Caracter
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir ""
		Escribir "Ingrese el nombre del contacto ", i, ":"
		Leer nombre_contacto
		
		Escribir "Ingrese el numero de telefono del contacto ", i, ":"
		Leer telefono_contacto
		
		lista_acumulada <- lista_acumulada + " - Nombre: " + nombre_contacto + " | Telefono: " + telefono_contacto + ""
	FinPara
	
	lista_actualizada <- lista_acumulada
FinFuncion

Funcion mostrar_contactos(lista_completa)
	Definir i Como Entero
	
	Para i <- 1 Hasta 1 Con Paso 1 Hacer
		Escribir ""
		Escribir "-----------------------------------"
		Escribir "Contactos Registrados:"
		Escribir "-----------------------------------"
	FinPara
	
	Escribir lista_completa
FinFuncion


Algoritmo agenda_de_contactos
	
	Definir lista_contactos Como Caracter
	Definir cantidad_contactos, i Como Entero
	
	lista_contactos <- ""
	
	Escribir "Ingrese la cantidad de contactos que desea registrar:"
	Leer cantidad_contactos
	
	lista_contactos <- registrar_contactos(lista_contactos, cantidad_contactos)
	
	mostrar_contactos(lista_contactos)
	
FinAlgoritmo