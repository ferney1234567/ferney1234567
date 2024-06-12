Algoritmo ejercicio16
	//Calcular el monto a pagar en una cabina de Internet si el costo por hora o fracci�n
	//	es de $1500. Si la persona consume m�s de 3 horas, las siguientes horas le
		//	saldr�n un 30% m�s econ�mico. Por cada hora tambi�n se dar�n 5 puntos que
		//	son acumulables para luego canjearlos por m�s tiempo. Decir al final cuantos
	//		puntos obtuvo la persona. El tiempo se debe preguntar al usuario en minutos
	
	Definir tiempo_en_minutos, horas_consumidas, monto_total, puntos_obtenidos Como Entero;
    Definir costo_por_hora, costo_por_hora_descuento Como Real;
	
    Escribir "Ingrese la cantidad de tiempo consumido en minutos:";
    Leer tiempo_en_minutos;
	
    horas_consumidas <- tiempo_en_minutos / 60;
    costo_por_hora <- 1500;
    costo_por_hora_descuento <- costo_por_hora * 7;
	
    Si horas_consumidas > 3 Entonces
        monto_total <- (3 * costo_por_hora) + ((horas_consumidas - 3) * costo_por_hora_descuento);
    Sino
        monto_total <- horas_consumidas * costo_por_hora;
    FinSi
	
    puntos_obtenidos <- horas_consumidas * 5;
	
    Escribir "Monto a pagar: ", monto_total;
    Escribir "Puntos obtenidos: ", puntos_obtenidos;
FinProceso
	
	
	


