Algoritmo ejercicio30
	//Leer dos n�meros y calcular su divisi�n, teniendo en cuenta que el denominador no debe ser 0 (cero) 

		Definir numerador, denominador, division Como Real
		
		Escribir "Ingrese el numerador:"
		Leer numerador
		
		Escribir "Ingrese el denominador (no puede ser cero):"
		Leer denominador
		
		Si denominador <> 0 Entonces
			division <- numerador / denominador
			Escribir "El resultado de la divisi�n es:", division
		Sino
			Escribir "Error: El denominador no puede ser cero."
		FinSi	
       FinAlgoritmo
