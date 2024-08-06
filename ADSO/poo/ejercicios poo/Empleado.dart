class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;


  Empleado(this.nombre,this.edad,this.salario,this.puesto,this.tipoContrato);

  void  aumentarSalario(double porcentaje){
    salario = salario + (salario * porcentaje / 100);
  }

  void cumplirAnios(){
    edad ++;
  }
  cambiarPuesto(String nuevoPuesto){
    puesto = nuevoPuesto;

  }
  void mostrarInformacion(){
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Salario: $salario');
    print('Puesto: $puesto');
    print('Tipo de contrato: $tipoContrato');

  }
  void calcularBonificacion(){
    switch(tipoContrato) {
      case "Contratista":
      print("La bonificación es: ${salario * 0.1}");
      break;
      case "Temporal":
      print("La bonificación es: ${salario * 0.05}");
      break;
      case "Indefinido":  
      print("La bonificación es: ${salario * 0.15}");
      break;
      default:
      print("No hay bonificación");

  }
}
}
