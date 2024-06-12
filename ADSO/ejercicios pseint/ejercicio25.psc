Algoritmo ejercicio25
//Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 ? 2,9), Suficiente (3 ? 4,5) y Bien (4,6 ? 5)

	Definir nota Como Real
    
    Escribir "Ingrese la nota (de 0 a 5):"
    Leer nota
    
    Si nota >= 0 Y nota < 3 Entonces
        Escribir "Insuficiente (0 - 2,9)"
    Sino
        Si nota >= 3 Y nota <= 4.5 Entonces
            Escribir "Suficiente (3 - 4,5)"
        Sino
            Si nota > 4.5 Y nota <= 5 Entonces
                Escribir "Bien (4,6 - 5)"
            Sino
                Escribir "Nota fuera de rango o mal ingresada."
            FinSi
        FinSi
    FinSi
    FinAlgoritmo
