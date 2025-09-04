Funcion n1 <- LeerNumero1
    Escribir "Ingrese el primer número: "
    Leer n1
FinFuncion

Funcion n2 <- LeerNumero2
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

Funcion MostrarResultado(nombre, val)
    Escribir "el resultado de la " nombre, " : ", val
FinFuncion

Algoritmo opreaciones_matematicas
	Definir num1, num2 Como Real
    Definir suma, resta, multi, divi Como Real
	
    num1 <- LeerNumero1
    num2 <- LeerNumero2
	
    suma <- Sumar(num1, num2)
    resta <- Restar(num1, num2)
    multi <- Multiplicar(num1, num2)
    divi <- Dividir(num1, num2)
	
	MostrarResultado("suma",suma)
	MostrarResultado("resta",resta)
	MostrarResultado("multiplicacion",multi)
	MostrarResultado("division", divi)
FinAlgoritmo
