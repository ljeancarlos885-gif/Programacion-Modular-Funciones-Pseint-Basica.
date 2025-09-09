
Funcion retorno <- registrar_libro(lista_actual)
	
	Definir titulo, autor Como Caracter;
	Definir paginas Como Entero;
	
	Escribir "---";
	Escribir "Ingresa la informacion del libro:";
	
	Escribir "Titulo:";
	Leer titulo;
	
	Escribir "Autor:";
	Leer autor;
	
	Escribir "Numero de paginas:";
	Leer paginas;
	
	lista_actual = lista_actual + "Titulo: " + titulo + ", Autor: " + autor + ", Paginas: " + ConvertirATexto(paginas) + ".\n";
	
	retorno = lista_actual;
	
FinFuncion

Funcion retorno <- preguntar_continuar
	Definir respuesta Como Caracter;
	
	Escribir "---";
	Escribir "Desea registrar otro libro? (Si/No)";
	Leer respuesta;
	
	retorno = respuesta;
	
FinFuncion


Algoritmo Registro_biblioteca
	
	Definir lista_libros Como Caracter;
	
	lista_libros = ""; 
	
	Escribir "---";
	Escribir "¡Bienvenido al sistema de registro de bibliotecas!";
	
	Repetir
		lista_libros = registrar_libro(lista_libros);
		
	Hasta Que preguntar_continuar() == "No";
	
	Escribir "---";
	Escribir "Mostrando la lista de libros registrados:";
	Escribir lista_libros;
	
FinAlgoritmo
