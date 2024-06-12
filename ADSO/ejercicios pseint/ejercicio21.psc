Algoritmo ejercicio21
	//Pedir dos números y decir cuál es el mayor o si son iguales
	definir numero1 , numero2 Como Real;
	
	escribir "ingrese el primer numero";
	leer numero1;
	
	escribir "ingrese el segundo numero";
	leer numero2;
	
	Si (numero1 > numero2) Entonces
		Escribir "El primer número es mayor que el segundo."
	Sino
		Si (numero2 > numero1) Entonces
			Escribir "El segundo número es mayor que el primero."
		Sino
			Escribir "Los números son iguales."
		FinSi
	FinSi
	
FinAlgoritmo
