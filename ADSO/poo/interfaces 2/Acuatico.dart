
import 'Corredor.dart';
import 'Pato.dart';
import 'Animal.dart';


abstract  class Acuatico extends Animal {
  int cantidadPatas;

  Acuatico(this.cantidadPatas , String especie , double peso, String sexo):super(especie,peso,sexo);

  nadar(){
    print('Estoy nadando');

  }
  volar(){
    print('Estoy volando');
  }

  
}