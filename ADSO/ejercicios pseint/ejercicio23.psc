Algoritmo ejercicio23
	
//	Pedir tres n?meros y mostrarlos ordenados de mayor a menor.
		
		Definir numero1, numero2, numero3, mayor, medio, menor Como Entero
		
		Escribir "Ingrese el primer numero:"
		Leer numero1
		
		Escribir "Ingrese el segundo numero:"
		Leer numero2
		
		Escribir "Ingrese el tercer numero:"
		Leer numero3
		
		Si numero1 >= numero2 Entonces
			Si numero2 >= numero3 Entonces
				mayor <- numero1
				medio <- numero2
				menor <- numero3
			Sino
				Si numero1 >= numero3 Entonces
					mayor <- numero1
					medio <- numero3
					menor <- numero2
				Sino
					mayor <- numero3
					medio <- numero1
					menor <- numero2
				FinSi
			FinSi
		Sino
			Si numero2 >= numero3 Entonces
				Si numero1 >= numero3 Entonces
					mayor <- numero2
					medio <- numero1
					menor <- numero3
				Sino
					mayor <- numero2
					medio <- numero3
					menor <- numero1
				FinSi
			Sino
				mayor <- numero3
				medio <- numero2
				menor <- numero1
			FinSi
		FinSi
		
		Escribir "Los numeros ordenados de mayor a menor son: ", mayor, ", ", medio, " y ", menor
		
FinAlgoritmo


