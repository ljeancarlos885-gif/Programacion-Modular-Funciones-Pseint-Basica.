Funcion n1 <- Leer_numero1
    Escribir "Ingrese el primer número: "
    Leer n1
FinFuncion

Funcion n2 <- Leer_numero2
    Escribir "Ingrese el segundo número: "
    Leer n2
FinFuncion


Funcion resultado <- Sumar(a, b)
    resultado <- a + b
FinFuncion

Funcion resultado <- Restar(a, b)
    resultado <- a - b
FinFuncion

Funcion resultado <- Multiplicar(a, b)
    resultado <- a * b
FinFuncion

Funcion resultado <- Dividir(a, b)
    Si b <> 0 Entonces
        resultado <- a / b
    SiNo
        Escribir "No se puede dividir entre cero"
        resultado <- 0
    FinSi
FinFuncion


Funcion MostrarTexto(text)
    Escribir text
FinFuncion

Funcion Mostrar_Resultado(nombre_operacion,esultado)
    Escribir "el resultado de la "  nombre_operacion, " es: ", resultado
FinFuncion

Algoritmo opreaciones_matematicas
	Definir num1, num2 Como Real
    Definir suma, resta, multi, divi Como Real
	
    num1 <- Leer_numero1()
    num2 <- Leer_numero2()
	
    suma <- Sumar(num1, num2)
    resta <- Restar(num1, num2)
    multi <- Multiplicar(num1, num2)
    divi <- Dividir(num1, num2)
	
	Mostrar_Resultado("suma",suma)
	Mostrar_Resultado("resta",resta)
	Mostrar_Resultado("multiplicacion",multi)
	Mostrar_Resultado("division", divi)

FinAlgoritmo
