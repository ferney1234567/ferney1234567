Algoritmo sin_titulo
	//Pedir tres números y mostrarlos ordenados de mayor a menor.
		Definir num1, num2, num3 como Entero
		
		Escribir "Introduce el primer número:"
		Leer num1,num2,num3

		Si num1 >= num2 y num1 >= num3 entonces
			Si num2 >= num3 entonces
				Escribir "Los números ordenados de mayor a menor son:", num1, ",", num2, ",", num3
			Sino
				Escribir "Los números ordenados de mayor a menor son:", num1, ",", num3, ",", num2
			FinSi
			Sino Si num2 >= num1 y num2 >= num3 entonces
			Si num1 >= num3 entonces
				Escribir "Los números ordenados de mayor a menor son:", num2, ",", num1, ",", num3
			Sino
				Escribir "Los números ordenados de mayor a menor son:", num2, ",", num3, ",", num1
			FinSi
		Sino
			Si num1 >= num2 entonces
				Escribir "Los números ordenados de mayor a menor son:", num3, ",", num1, ",", num2
			Sino
				Escribir "Los números ordenados de mayor a menor son:", num3, ",", num2, ",", num1
			FinSi
		FinSi
		finsi
FinAlgoritmo


