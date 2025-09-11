
Funcion cantidad <- leer_cantidad_oficinas(piso)
    Definir cantidad_ofis Como Entero
    Repetir
        Escribir "¿Cuántas oficinas tiene el piso ", piso, "?"
        Leer cantidad_ofis
        Si cantidad_ofis <= 0 Entonces
            Escribir "Debe ingresar una cantidad positiva."
        FinSi
    Hasta Que cantidad_ofis > 0
    cantidad <- cantidad_ofis
FinFuncion

Funcion consumo <- leer_consumo_oficina(piso, oficina)
    Definir consumo_ofis Como Real
    Repetir
        Escribir "Ingrese el consumo de luz (horas) de la oficina ", oficina, " del piso ", piso, ":"
        Leer consumo_ofis
        Si consumo_ofis < 0 Entonces
            Escribir "El consumo no puede ser negativo."
        FinSi
    Hasta Que consumo_ofis >= 0
    consumo <- consumo_ofis
FinFuncion

Funcion total_piso <- Calcular_total_consumo_piso(piso)
    Definir total_ofis Como Real
    Definir consumo_oficina Como Real
    Definir cantidad_oficinas, i Como Entero
	
    total_ofis <- 0
    cantidad_oficinas <- Leer_cantidad_oficinas(piso)
	
    Para i <- 1 Hasta cantidad_oficinas Con Paso 1
        consumo_oficina <- Leer_consumo_oficina(piso, i)
        total_ofis <- total_ofis + consumo_oficina
    FinPara
	
    total_piso <- total_ofis
FinFuncion

Funcion mostrar_alerta(piso, consumo_total)
    Escribir "Piso: ", piso
    Escribir "Consumo total: ", consumo_total, " horas"
	
    Si consumo_total <= 30 Entonces
        Escribir "? Consumo Bajo"
	Sino 
		Si consumo_total <= 60 Entonces
        Escribir "? Consumo Normal"
	Sino
		Si consumo_total <= 100 Entonces
        Escribir "? Alto Consumo"
    Sino
        Escribir ">>> ALERTA: No se puede seguir utilizando este piso <<<"
		FinSi
	FinSi
FinSi

    Escribir "-----------------------------"
FinFuncion

Funcion total <- Sumar_total(actual, piso)
    total <- actual + piso
FinFuncion

Algoritmo consumo_luz_edificio
    Definir consumo_ejecutivo, consumo_vip, consumo_normal, consumo_bodegas Como Real
    Definir consumo_total_edificio Como Real
	
    consumo_total_edificio <- 0
	
    consumo_ejecutivo <- calcular_total_consumo_piso("Ejecutivo")
    mostrar_alerta("Ejecutivo", consumo_ejecutivo)
    consumo_total_edificio <- Sumar_total(consumo_total_edificio, consumo_ejecutivo)
	
    consumo_vip <- calcular_total_consumo_piso("VIP")
    Mostrar_alerta("VIP", consumo_vip)
    consumo_total_edificio <- Sumar_total(consumo_total_edificio, consumo_vip)
	
    consumo_normal <-  calcular_total_consumo_piso("Normal")
	mostrar_alerta("Normal", consumo_normal)
    consumo_total_edificio <- Sumar_total(consumo_total_edificio, consumo_normal)
	
    consumo_bodegas <-  calcular_total_consumo_piso("Bodegas")
	mostrar_alerta("Bodegas", consumo_bodegas)
    consumo_total_edificio <- Sumar_total(consumo_total_edificio, consumo_bodegas)
	
    Escribir "Resumen del consumo del edificio:"
    Escribir "Consumo total acumulado: ", consumo_total_edificio, " horas"
FinAlgoritmo
