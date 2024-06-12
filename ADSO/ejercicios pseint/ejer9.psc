Algoritmo sin_titulo
	Definir figura Como Caracter
    Definir radio, lado, base, altura, area, perimetro Como Real
	
	escribir"la figura geometrica es ";
	leer figura;
	
	si figura == "cuadrado" Entonces
		Escribir "Ingrese el lado del cuadrado:"
		Leer lado
		area <- lado * lado
		perimetro <- 4 * lado
		
		 sino si figura == "circulo" Entonces
		 Escribir "Ingrese el radio del círculo:"
		 Leer radio
		  area <- 3.1416 * radio * radio
		   perimetro <- 2 * 3.1416 * radio
		
		sino si figura == "triangulo" Entonces
		Escribir "Ingrese la base del triángulo:"
		Leer base
		Escribir "Ingrese la altura del triángulo:"
		Leer altura
		area <- (base * altura) / 2
		Escribir "Ingrese los tres lados del triángulo:"
		Leer lado
		perimetro <- lado + base + altura
			
		sino  si figura == "rectangulo" Entonces
		Escribir "Ingrese la base del rectángulo:"
		Leer base
		Escribir "Ingrese la altura del rectángulo:"
		Leer altura
		area <- base * altura
		perimetro <- 2 * (base + altura)
		FinSi
		finsi
		finsi
		finsi

		Escribir "Área calculada:", area
		Escribir "Perímetro calculado:", perimetro
		
FinAlgoritmo
