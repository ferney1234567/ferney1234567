Algoritmo ejercicio20
//	Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente
	//desea saber cuánto deberá pagar finalmente por su compra. Tener en cuenta
	//que los martes se tiene un 20% de descuento y los viernes se tiene un 50% de
	//descuento si el total de la compra supera los $500.000
	
		Definir totalCompra, descuento, precioFinal Como Real
		
		Escribir "Ingrese el monto total de la compra:"
		Leer totalCompra
		
		Si diaDeLaSemana = "Martes" Entonces
			descuento <- 0.20
		Sino
			Si diaDeLaSemana = "Viernes" Y totalCompra > 500000 Entonces
				descuento <- 0.50
			Sino
				descuento <- 0.15
			FinSi
		FinSi
		
		precioFinal <- totalCompra - (totalCompra * descuento)
		
		Escribir "El precio final a pagar es: ", precioFinal
		
FinAlgoritmo

