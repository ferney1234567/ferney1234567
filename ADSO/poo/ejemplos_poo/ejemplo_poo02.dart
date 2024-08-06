import 'dart:io';

class Persona {
  String nombre;
  String genero;
  DateTime fechaNacimiento;
  double documento;
  String tipoDocumento;

  Persona(this.nombre, this.documento, this.genero, this.fechaNacimiento, this.tipoDocumento);

  void saludar() {
    print('La persona ${this.nombre} está saludando.');
  }

  void comunicarse() {
    print('La persona ${this.nombre} se está comunicando.');
  }

  void calcularEdad() {
    DateTime hoy = DateTime.now();
    int edad = hoy.year - fechaNacimiento.year;
    if (hoy.month < fechaNacimiento.month || 
        (hoy.month == fechaNacimiento.month && hoy.day < fechaNacimiento.day)) {
      edad--;
    }
    print('La persona ${this.nombre} tiene $edad años.');
  }

  void mostrarInformacion() {
    print("El nombre de la persona es: ${this.nombre}, su género es: ${this.genero}, su fecha de nacimiento es: ${this.fechaNacimiento}, su documento es: ${this.documento}, y su tipo de documento es: ${this.tipoDocumento}.");
  }
}

void main(List<String> args) {
  Persona persona1;
  persona1 = Persona('Juan', 123456789, 'M', DateTime(2024, 06, 16), 'DNI');
  persona1.mostrarInformacion();
  persona1.saludar();
  persona1.comunicarse();
  persona1.calcularEdad();


 /*+****************+*/
  print("*" * 50);
print("Ejercicio 2");
  String nombre2 ;
  String genero2;
  DateTime fechaNacimiento2;
  double documento2;
  String tipoDocumento2;

  print("ingrese su nombre");
  nombre2 = stdin.readLineSync()!;
  print("ingrese su genero");
  genero2 = stdin.readLineSync()!;
  print("ingrese su fecha de nacimiento");
  fechaNacimiento2 = DateTime.parse(stdin.readLineSync()!);
  print("ingrese su documento");
  documento2 = double.parse(stdin.readLineSync()!);
  print("ingrese su tipo de documento");
  tipoDocumento2 = stdin.readLineSync()!;

  Persona persona2 = Persona(nombre2, documento2, genero2, fechaNacimiento2,tipoDocumento2);
  
  persona2.mostrarInformacion();
  persona2.saludar();
  persona2.comunicarse();
  persona2.calcularEdad();


}
