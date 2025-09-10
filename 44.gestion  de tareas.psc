
Funcion tarea_final = agregar_tareas(lista_tareas_modificar Por Referencia)
   
    Definir descripcion, fecha_vencimiento, continuar Como Caracter
    Definir tarea_final Como Caracter
    
    Repetir
        Escribir "Ingrese la descripcion de la tarea:"
        Leer descripcion
        
        Escribir "Ingrese la fecha de vencimiento (ej. dd/mm/aaaa):"
        Leer fecha_vencimiento
        
        // Acumular la tarea
        lista_tareas_modificar <- lista_tareas_modificar + "Tarea: " + descripcion + " - Vencimiento: " + fecha_vencimiento + ""
        
        Escribir "¿Desea agregar otra tarea? (si/no)"
        Leer continuar
		
    Hasta Que continuar <> "si"
    
    tarea_final <- lista_tareas_modificar
FinFuncion

Funcion mostrar_tareas(lista_tareas_mostrar)
   
    Escribir ""
    Escribir "Lista completa de tareas:"
    Escribir lista_tareas_mostrar
FinFuncion

Algoritmo gestion_de_tareas
	
    Definir lista_tareas Como Caracter
    lista_tareas <- ""
    
    lista_tareas <- agregar_tareas(lista_tareas)
    
    mostrar_tareas(lista_tareas)
    
FinAlgoritmo

