import './Animal.dart';

class Terrestre  extends Animal{
  int cantidadPatas;

  Terrestre(this.cantidadPatas,String especie , double peso,String sexo):super( especie, peso , sexo);

  void correr(){
    print("El animal terrestre come");
  }
  
}