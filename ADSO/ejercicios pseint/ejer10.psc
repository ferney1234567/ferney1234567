Algoritmo CalculadoraFigurasGeometricas
    Definir figura Como Caracter
    Definir radio, lado, base, altura, area, perimetro Como Real
	
    Escribir "Seleccione una figura geom�trica:"
   
    Leer figura
	
            Escribir "Ingrese el radio del c�rculo:"
            Leer radio
            area <- 3.1416 * radio * radio
            perimetro <- 2 * 3.1416 * radio
        
            Escribir "Ingrese la base del tri�ngulo:"
            Leer base
            Escribir "Ingrese la altura del tri�ngulo:"
            Leer altura
            area <- (base * altura) / 2
            Escribir "Ingrese los tres lados del tri�ngulo:"
            Leer lado
            perimetro <- lado + base + altura
        
            Escribir "Ingrese el lado del cuadrado:"
            Leer lado
            area <- lado * lado
            perimetro <- 4 * lado
        
            Escribir "Ingrese la base del rect�ngulo:"
            Leer base
            Escribir "Ingrese la altura del rect�ngulo:"
            Leer altura
            area <- base * altura
            perimetro <- 2 * (base + altura)


        Escribir "�rea calculada:", area
        Escribir "Per�metro calculado:", perimetro
FinAlgoritmo
