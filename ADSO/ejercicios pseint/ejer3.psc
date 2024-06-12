Algoritmo sin_titulo
//Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 ? 2,9), Suficiente (3 ? 4,5) y Bien (4,6
	//? 5)

		Definir nota Como Real
		
		Escribir "Ingrese la nota (0 a 5): "
		Leer nota
		
		Si nota >= 0 Y nota < 3 Entonces
			Escribir "Insuficiente"
		Sino Si nota >= 3 Y nota <= 4.5 Entonces
				Escribir "Suficiente"
			Sino Si nota > 4.5 Y nota <= 5 Entonces
					Escribir "Bien"
				Sino
					Escribir "Nota fuera de rango válido"
				Fin Si
			FinSi
		FinSi
		
FinAlgoritmo



	



