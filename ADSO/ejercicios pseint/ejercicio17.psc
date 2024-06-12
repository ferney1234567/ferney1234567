Algoritmo ejercicio17
	//Calcular el nuevo salario de un empleado si se le descuenta el 20% de su salario
	//actual para pagar un préstamo por nómina. Descontar los siguientes impuestos:
	//		retefuente de 10% solo si la persona gana más de 4?000.000 al mes, 12 para salud
		//			y pensión y 3% para un ahorro programado que tiene la persona. Sumar al salario
			//			básico un 4% correspondiente a un subsidio de alimentación que le brinda la
				//		empresa a sus empleados
	

		Definir salario_actual, nuevo_salario, retencion_retefuente, retencion_salud_pension, ahorro_programado Como Real;
		
		Escribir "Ingrese el salario actual del empleado:";
		Leer salario_actual;
		
		Si salario_actual > 4000000 Entonces
			retencion_retefuente <- salario_actual * 0.10;
		Sino
			retencion_retefuente <- 0;
		FinSi
		
		retencion_salud_pension <- salario_actual * 0.12;
		ahorro_programado <- salario_actual * 0.03;
		
		nuevo_salario <- salario_actual - (salario_actual * 0.20) - retencion_retefuente - retencion_salud_pension - ahorro_programado;
		nuevo_salario <- nuevo_salario + (salario_actual * 0.04);
		Escribir "El nuevo salario del empleado es: ", nuevo_salario;

FinAlgoritmo
