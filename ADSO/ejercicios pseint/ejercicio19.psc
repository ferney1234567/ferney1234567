Algoritmo ejercicio19
	
	//Un vendedor recibe un sueldo base de $500000 más un 10% extra por comisión
//	de sus ventas, el vendedor desea saber cuánto dinero obtendrá por concepto de
	//comisiones por las tres ventas que realiza en el mes y el total que recibirá en el
//	mes tomando en cuenta su sueldo base y comisiones.
	//Decir al final cuánto gana el vendedor al año
		Definir sueldo_base, venta_1, venta_2, venta_3 Como Real
		
		sueldo_base <- 500000
		venta_1 <- valor_de_venta_1
		venta_2 <- valor_de_venta_2
		venta_3 <- valor_de_venta_3
		
		comision_total <- (venta_1 + venta_2 + venta_3) * 10
		total_mes <- sueldo_base + comision_total
		
		Escribir "Total de comisiones del mes: ", comision_total
		Escribir "Salario total del mes: ", total_mes
		Escribir "Salario anual del vendedor: ", total_mes 
FinAlgoritmo


