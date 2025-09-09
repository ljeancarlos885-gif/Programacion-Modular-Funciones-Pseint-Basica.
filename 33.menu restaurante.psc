

Funcion costo <- obtener_costo_item(opcion Por Valor)
    Definir costo Como Real;
    
    Segun opcion Hacer
        1:
            costo <- 15.00;
        2:
            costo <- 12.00;
        3:
            costo <- 10.00;
        De Otro Modo:
            costo <- 0.00;
    FinSegun
FinFuncion


Funcion costo_con_descuento <- calcular_costo_final(subtotal ,metodo_pago )
    Definir costo_con_descuento, descuento Como Real;
    
    Segun metodo_pago Hacer
        "a":
            descuento <- subtotal * 0.10;
        "b":
            descuento <- subtotal * 0.05;
        "c":
            descuento <- 0;
        De Otro Modo:
            descuento <- 0;
    FinSegun
FinFuncion

Algoritmo menu_restaurante
	Definir opcion_plato, opcion_bebida Como Entero;
    Definir costo_plato, costo_bebida, subtotal Como Real;
    Definir metodo_pago Como Caracter;
    Definir costo_final Como Real;
    
   
    Escribir "--- ¡Bienvenido a La Parrilla Feliz!---";
    Escribir "--- Nuestro Menu ---";
    Escribir "Platos:";
    Escribir "1. Carne a la Parrilla ($15.00)";
    Escribir "2. Pollo al Horno ($12.00)";
    Escribir "3. Pasta con Salsas ($10.00)";
    Escribir "";
    Escribir "Bebidas:";
    Escribir "1. Jugo Natural ($2.500)";
    Escribir "2. Gaseosa ($2.000)";
    Escribir "3. Agua ($1.500)";
    Escribir "--------------------";
    
    
    Escribir "Por favor, elige tu plato (1-3):";
    Leer opcion_plato;
    Escribir "Por favor, elige tu bebida (1-3):";
    Leer opcion_bebida;
    
   
    costo_plato <- obtener_costo_item(opcion_plato);
    costo_bebida <- obtener_costo_item(opcion_bebida);
    
    
    subtotal <- costo_plato + costo_bebida;
    
   
    Escribir "Elige tu metodo de pago:";
    Escribir "a. Efectivo (10% de descuento)";
    Escribir "b. Tarjeta de Credito (5% de descuento)";
    Escribir "c. Cheque (Sin descuento)";
    Leer metodo_pago;
    
    costo_final <-  calcular_costo_final(subtotal, metodo_pago);
    
    Escribir "";
    Escribir "--- Tu Cuenta ---";
    Escribir "Costo del plato: $", costo_plato;
    Escribir "Costo de la bebida: $", costo_bebida;
    Escribir "Subtotal: $", subtotal;
    Escribir "Costo final con descuento: $", costo_final;
    Escribir "¡Gracias por tu visita! ";
FinAlgoritmo
