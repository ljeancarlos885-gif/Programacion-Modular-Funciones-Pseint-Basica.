
Funcion nombre_cliente <- pedir_nombre
	Definir nombre_cliente Como Caracter
	Escribir "Escriba el Nombre Cliente: ";
	leer  nombre_cliente ;
FinFuncion

Funcion apelli_docliente <- Pedir_apellido
	Definir apellidocliente Como Caracter
	Escribir "Escriba el Apellido Cliente: ";
	leer apellidoCliente;
FinFuncion

Funcion Ver_saludo(dato_nombre_cliente, dato_apellido_cliente)
	definir texto_cliente Como Caracter;
	
	texto_cliente <- (dato_nombre_cliente + "" + dato_apellido_cliente);
	Escribir "Saludo Cliente: " + texto_cliente;
FinFuncion

Algoritmo registro_cliente
	dato_nombre <- pedir_nombre()
	dato_apellido <- Pedir_apellido()	
	
	Ver_saludo(dato_nombre,dato_apellido)
FinAlgoritmo
