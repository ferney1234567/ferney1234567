import 'Terrestre.dart';


class Perro extends Terrestre {

  String raza;
  String vacunas;

  Perro(this.raza,this.vacunas, int cantidadPatas,String especie, double peso,String sexo): super(cantidadPatas,especie,peso,sexo);

  void mostrarInformacion(){
    print("""el perro es de raza: $raza
    tiene $cantidadPatas patas
    pesa $peso kilos
    su sexo es $sexo""");
  }
}