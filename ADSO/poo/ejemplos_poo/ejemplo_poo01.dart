import 'dart:io';

class Felino {
  //atributos
   String nombre;
   double altura;
   double peso;
   int edad;

  //constructor metodo que se ejecuta cuando se crea un objeto de la clase
  Felino(this.nombre, this.altura ,  this.peso, this.edad) ;

  //metodos
  void comer(){
    print('El felino ${this.nombre} come');
  }
  void dormir(){
    print('El felino ${this.nombre} duerme');
  }
  void caminar(){
    print('El felino ${this.nombre} camina');
  }
  void correr(){
    print('El felino ${this.nombre} corre');
  }
   void mostrarInformacion(){
    print("""El nombre del felino es: ${this.nombre} 
       tiene  una altura de:${this.altura}
       tiene un peso de: ${this.peso} 
       y tiene una edad de ${this.edad}""");
   }
}

void main(List<String> args) {
  //1 forma de hacerlo
  //creacion del objeto
  int numero;
  String texto;
  bool estado;
  Felino felino1_obj;//se declara un objeto de la clase felino
  felino1_obj =Felino("mateo", 1.82, 100, 18);
  felino1_obj.caminar();
  felino1_obj.comer();
  felino1_obj.dormir();
  felino1_obj.correr();
  felino1_obj.mostrarInformacion();

// 2 forma de hacerlo
  /*+****************+*/
  print("*" * 50);
  //se declara e instancia el objeto en una sola linea de codigo
  Felino felino2_obj = Felino("luis", 50, 60, 4);
  felino2_obj.caminar();
  felino2_obj.comer();
  felino2_obj.dormir();
  felino2_obj.correr();
  felino2_obj.mostrarInformacion();
  
//3 forma de hacerlo
   /*+****************+*/
  print("*" * 50);
 String nombre = "lola";
   double altura = 76;
   double peso = 60;
   int edad = 4;
   Felino felino3_obj = Felino(nombre, altura, peso, edad);
   felino3_obj.caminar();
   felino3_obj.comer();
   felino3_obj.dormir();
   felino3_obj.correr();
   felino3_obj.mostrarInformacion();

//4 forma de hacerlo
 /*+****************+*/
  print("*" * 50);

    String nombre1;
   double altura1;
   double peso1;
   int edad1;

   print("ingrese el nombre del felino");
   nombre1 = stdin.readLineSync()!;
   print("ingrese la altura del felino");
   altura1 = double.parse(stdin.readLineSync()!);
   print("ingrese el peso del felino");
   peso1 = double.parse(stdin.readLineSync()!);
   print("ingrese la edad del felino");
   edad1 = int.parse(stdin.readLineSync()!);

   Felino felino4_obj = Felino(nombre1, altura1, peso1, edad1);
   felino4_obj.caminar();
   felino4_obj.comer();
   felino4_obj.dormir();
   felino4_obj.correr();
   felino4_obj.mostrarInformacion();

  
}
