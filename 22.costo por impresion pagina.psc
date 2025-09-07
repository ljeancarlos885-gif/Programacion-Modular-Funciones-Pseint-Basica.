Funcion paginas <- ingresar_cantidad_paginas
    Definir paginas Como Entero
    Escribir "Ingrese la cantidad de páginas a imprimir: "
    Leer paginas
FinFuncion

Funcion precio <- ingresar_precio_por_pagina
    Definir precio Como Real
    Escribir "Ingrese el precio por página: "
    Leer precio
FinFuncion

Funcion costo <- CalcularCosto(paginas, precio)
    Definir costo Como Real
    costo <- paginas * precio
FinFuncion

SubProceso mostrar_resultado(costo)
    Escribir "--------------------------------"
    Escribir "El costo total de impresión es: $", costo
    Escribir "--------------------------------"
FinSubProceso

Algoritmo Costo_impresion_pagina
    Definir paginas Como Entero
    Definir precio, costo Como Real
	

    paginas <-ingresar_cantidad_paginas()
    precio <- ingresar_precio_por_pagina()
	
   
    costo <- CalcularCosto(paginas, precio)
	
  
    mostrar_resultado(costo)
FinAlgoritmo
