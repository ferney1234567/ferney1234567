Algoritmo ejercicio24
	//Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene.
	definir numero como real;
	
	escribir "ingrese un numero";
	leer numero;
	
	Si numero >= 0 Y numero <= 9999 Entonces
       
        Si numero < 10 Entonces
            cifras <- 1
        Sino
            Si numero < 100 Entonces
                cifras <- 2
            Sino
                Si numero < 1000 Entonces
                    cifras <- 3
                Sino
                    cifras <- 4
                FinSi
            FinSi
        FinSi
        
        Escribir "El número ", numero, " tiene ", cifras, " cifras."
    Sino
        Escribir "El número ingresado no está en el rango especificado."
    FinSi
FinProceso
	
	
	

