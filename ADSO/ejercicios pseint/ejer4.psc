Algoritmo sin_titulo
	//Pedir un número entre 0 y 9.999 y decir cuántas cifras tienen
		Definir numero, cifras Como Entero
		
		Escribir "Por favor, ingresa un número entre 0 y 9.999:"
		Leer numero
		Escribir lista_de_expresiones
		Si numero >= 0 Y numero <= 9 Entonces
			cifras <- 1
		FinSi
		
		Si numero >= 10 Y numero <= 99 Entonces
			cifras <- 2
		FinSi
		
		Si numero >= 100 Y numero <= 999 Entonces
			cifras <- 3
		FinSi
		
		Si numero >= 1000 Y numero <= 9999 Entonces
			cifras <- 4
		FinSi
		
		Escribir "El número ingresado tiene ", cifras, " cifras."
FinAlgoritmo


	
	

