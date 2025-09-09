Funcion es_valida <- validar_transaccion(saldo_disponible , monto_retirar )
    Definir es_valida Como Logico;
    
    Si monto_retirar <= saldo_disponible Y monto_retirar > 0 Entonces
        es_valida <- Verdadero;
    Sino
        es_valida <- Falso;
    FinSi
FinFuncion

Funcion nuevo_saldo <- actualizar_saldo(saldo_actual, monto_retirar)
    Definir nuevo_saldo Como Real;
    
    nuevo_saldo <- saldo_actual - monto_retirar;
FinFuncion

Algoritmo cajero_automatico
    Definir saldo_inicial, monto_retirar Como Real;
    Definir transaccion_valida Como Logico;
    Definir continuar Como Caracter;
    
   
    saldo_inicial <- 100000;
    
    Escribir "--- Bienvenido al Cajero Automatico ---";
    Escribir "Saldo disponible: $", saldo_inicial;
    
    continuar <- 's';
    
    
    Mientras (continuar = 's' o continuar = 'S') Hacer
        Escribir "";
        Escribir "Ingresa el monto a retirar:";
        Leer monto_retirar;
        
        transaccion_valida <- validar_transaccion(saldo_inicial, monto_retirar);
        
        Si transaccion_valida Entonces
          
            saldo_inicial <- actualizar_saldo(saldo_inicial, monto_retirar);
            Escribir "Retiro exitoso. Su nuevo saldo es: $", saldo_inicial;
        Sino
            Escribir "Error: El monto a retirar excede el saldo disponible.";
        FinSi
        
        Escribir "";
        Escribir "¿Desea realizar otra transaccion? (s/n)";
        Leer continuar;
    FinMientras
    
    Escribir "";
    Escribir "Gracias por usar el cajero automático. ¡Hasta pronto! ";
FinAlgoritmo

