Algoritmo ejercicio22
	//Pedir dos números y mostrarlos ordenados de mayor a menor

		Definir numero1, numero2, mayor, menor Como Entero
		
		Escribir "Ingrese el primer número:"
		Leer numero1
		
		Escribir "Ingrese el segundo número:"
		Leer numero2
		
		Si numero1 > numero2 Entonces
			mayor <- numero1
			menor <- numero2
		Sino
			mayor <- numero2
			menor <- numero1
		FinSi
		
		Escribir "Los números ordenados de mayor a menor son: ", mayor, " y ", menor
		
FinAlgoritmo

