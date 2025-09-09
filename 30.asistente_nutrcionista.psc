

Funcion resultado <- Calcular_imc(peso , altura )
    Definir resultado Como Real;
    resultado <- peso / (altura * altura);
FinFuncion

Funcion categoria_final <- obtener_categoria_segun(imc )
    Definir categoria_final Como Caracter;
    Definir rango_imc Como Entero;
	
    Si imc < 18.5 Entonces
        rango_imc <- 1;
		Sino Si imc < 24.9 Entonces
		rango_imc <- 2; 
		Sino Si imc < 29.9 Entonces
		rango_imc <- 3; 
    Sino
        rango_imc <- 4;
		FinSi
	FinSi
FinSi

    Segun rango_imc Hacer
        1:
            categoria_final <- "bajo peso";
        2:
            categoria_final <- "Peso normal";
        3:
			categoria_final <- "sobrepeso";
        4:
			categoria_final <- "obesidad";
    FinSegun
	
FinFuncion

Algoritmo asistente_nutrcionista
	Definir peso, altura, imc Como Real;
    Definir categoria Como Caracter;
	
    Escribir "¡Hola! Soy tu asistente de IMC. ";
    Escribir "Por favor, introduce tu peso en kilogramos:";
    Leer peso;
    Escribir "Ahora, introduce tu altura en metros:";
    Leer altura;
	
   
    imc <- calcular_imc(peso, altura);
    categoria <- obtener_categoria_segun(imc);
	
  
    Escribir "";
    Escribir "--- Resultado de tu IMC ---";
    Escribir "Tu IMC es: ", imc;
    Escribir "Tu categoría es: ", categoria;
    Escribir "---------------------------";
FinAlgoritmo
