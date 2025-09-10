
Funcion registro_final <- registrar_vehiculo(lista_acumulada)
    Definir placa, hora Como Caracter
    Definir registro_final Como Caracter
    
    Repetir
        Escribir ""
        Escribir ""
        Escribir "Registro de vehiculo"
        
        Escribir "Ingrese la placa del vehiculo (ej. ABC-123):"
        Leer placa
        
        Escribir "Ingrese la hora de ingreso (ej. h:m):"
        Leer hora
        
        lista_acumulada <- lista_acumulada + "Placa: " + placa + " - Hora de ingreso: " + hora + ""
        
        Escribir "Registro completado."
    Hasta Que (placa <> "")
    
    registro_final <- lista_acumulada
FinFuncion

Funcion mostrar_resumen(lista_registros)
    Escribir ""
    Escribir "--------------------------------"
    Escribir "Resumen de vehiculos registrados:"
    Escribir "--------------------------------"
    Escribir lista_registros
FinFuncion

Algoritmo Registro_de_vehiculos_parqueadero
    Definir num_vehiculos, i Como Entero
    Definir lista_registros Como Caracter
    
    lista_registros <- ""
    
    Escribir "Ingrese el numero de vehiculos a registrar:"
    Leer num_vehiculos
    
    Para i <- 1 Hasta num_vehiculos Con Paso 1 Hacer
		
        lista_registros <- registrar_vehiculo(lista_registros)
    FinPara
    
    mostrar_resumen(lista_registros)
    
FinAlgoritmo
