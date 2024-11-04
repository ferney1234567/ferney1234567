import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( const Principal());
  
}
class Principal extends StatelessWidget { //clase que hereda de la clase StatelessWidget para crear un Widget sin estado
  const Principal({super.key});//contructor contante para la clase Principal

  @override //indica que sobreescribe el metodo  build de la clase StatelessWidget
  Widget build(BuildContext context) {
    //se sobrescribe el metodo build para devolver un Widget de tipo MaterialApp
    return const MaterialApp(
      title: "My adso App", //se establece el titulo de la aplicacion
      home: Text("_Esta es mi primera aplicacioon en Flutter . \n _Ferney Arias \n _ADSO 2873707 \n _CPIC -sena"),//se establece el witget de la pagina de inisio
    );

  }
}