Algoritmo sin_titulo
	definir vatios, amperios, voltios, horas, cantidad_compra, consumoTotal , kiloVatios como Real;
	definir marca como cadena;
	
	escribir "Ingrese la marca del computador";
	leer marca;
	
	horas <- 10;
	cantidad_compra <- 15;
	
	si(marca == "hp") Entonces
		voltios <- 14;
		amperios <- 2;
	Sino si(marca == "acer") Entonces
			voltios <- 13;
			amperios <- 15;
		Sino si(marca == "lenovo") Entonces
				voltios <- 11;
				amperios <- 2.2;
			Sino si(marca == "asus") Entonces
					voltios <- 14;
					amperios <- 2;
				FinSi
			FinSi
		FinSi
		finsi
				
				vatios <- voltios * amperios; 
				kiloVatios <- vatios / 1000;  
				
				consumoTotal <- kiloVatios * horas * cantidad_compra;
				
				escribir "El consumo de los 15 computadores en las 10 horas es ", consumoTotal;

FinAlgoritmo
