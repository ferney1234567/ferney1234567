Algoritmo ejercicio24
	//Pedir un n�mero entre 0 y 9.999 y decir cu�ntas cifras tiene.
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
        
        Escribir "El n�mero ", numero, " tiene ", cifras, " cifras."
    Sino
        Escribir "El n�mero ingresado no est� en el rango especificado."
    FinSi
FinProceso
	
	
	

