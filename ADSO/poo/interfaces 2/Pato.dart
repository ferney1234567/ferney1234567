import './Acuatico.dart';
import './Corredor.dart';


class Pato extends Acuatico implements Corredor {
  String color;
  String tamano;

  Pato(this.color,this.tamano,int cantidadPatas, double peso  ,String sexo, String especie):super(cantidadPatas, especie, peso, sexo);

mostrarinformacio(){
  print("""el pato es de color $color
  tiene $cantidadPatas patas
  pesa $peso kilos
  sexo $sexo
  especie $especie""");



}
 @override
  sumergirse() {
    print("el pato se sumerje");
    
  }
  @override
  comer() {
    print("el pato come");
  }
  @override
  correr() {
    // TODO: implement correr
    print("el pato corre");
  }
  @override
  nadar() {
    // TODO: implement nadar
    print("el pato esta nadando");
  }
}
