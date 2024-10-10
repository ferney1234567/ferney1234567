import 'Corredor.dart';
import 'Nadador.dart';

class Pato implements Corredor,Nadador {
  @override
  correr() {
    print("el pato corre");
  }
  @override
  nadar() {
    print("El pato nada");
  }
  @override
  sumergirse() {
    print("el pato se sumerje");
    
  }
  @override
  comer() {
    print("el pato come");
  }
}