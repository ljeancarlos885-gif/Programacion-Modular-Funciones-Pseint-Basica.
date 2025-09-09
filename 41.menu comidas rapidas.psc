Funcion retorno <- procesar_pedido
	
	Definir option Como Entero;
	Definir costo_pedido Como Real;
	
	costo_pedido = 0;
	
	Escribir "---";
	Escribir "Ingrese el numero de su pedido:";
	Leer option;
	
	Segun option Hacer
		1:
			costo_pedido = 15500;
			Escribir "Ha agregado una Hamburguesa.";
		2:
			costo_pedido = 25000;
			Escribir "Ha agregado una Pizza.";
		3:
			costo_pedido = 10000;
			Escribir "Ha agregado Tacos.";
		4:
			costo_pedido = 5000;
			Escribir "Ha agregado un Refresco.";
		De Otro Modo:
			Escribir "opcion no valida. No se ha agregado nada al pedido.";
	FinSegun
	
	retorno = costo_pedido;
	
FinFuncion


Funcion retorno <- preguntar_continuar
	
	Definir respuesta Como Caracter;
	
	Escribir "---";
	Escribir "Desea agregar otro pedido? (Si/No)";
	Leer respuesta;
	
	retorno = respuesta;
	
FinFuncion


Algoritmo menu_comidas_rapidas
	
	Definir costo_total Como Real;
	
	costo_total = 0;
	
	Escribir "---";
	Escribir "¡Bienvenido a nuestro menu de comidas rapidas!";
	
	Repetir
		Escribir "---";
		Escribir "Menu de opciones:";
		Escribir "1. Hamburguesa (15500)";
		Escribir "2. Pizza (25000)";
		Escribir "3. Tacos (10000)";
		Escribir "4. Refresco (5000)";
		
		costo_total = costo_total + procesar_pedido;
		
	Hasta Que preguntar_continuar == "No";
	
	
	Escribir "---";
	Escribir "El costo total de sus pedidos es: $", costo_total;
	Escribir "¡Gracias por su compra!";
	
FinAlgoritmo