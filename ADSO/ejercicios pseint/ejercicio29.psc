Algoritmo ejercicio29
	//Dado un monto, calcular el descuento considerando que por encima de 100 el descuento es del 10%
	//y por debajo de 100, el descuento es del 2%
		Definir monto, descuento Como Real
		
		Escribir "Ingrese el monto:"
		Leer monto
		
		Si monto > 100 Entonces
			descuento <- monto * 10 // 10% de descuento
		Sino
			descuento <- monto * 2 // 2% de descuento
		FinSi
		
		Escribir "El descuento es: ", descuento
FinProceso

	

