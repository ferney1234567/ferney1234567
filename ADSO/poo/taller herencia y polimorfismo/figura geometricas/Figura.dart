  abstract class Figura {

  double calcularArea();
  double calcularPerimetro();
    
  } 

//-------------------------------------------------------------------------
class Circulo extends Figura {
   double radio;

   Circulo(this.radio);

   @override
   double calcularArea(){
    return 3.14 * (radio * radio);
   }
   @override
   double calcularPerimetro(){
   return 2 * 3.14 * radio;
   }
}
//-------------------------------------------------------------------------
class  Cuadrado extends Figura{
  double lado;

  Cuadrado(this.lado);

  @override
   double calcularArea(){
    return (lado * lado);
   }
   @override
   double calcularPerimetro(){
    return 4 * lado;
}
}
//-------------------------------------------------------------------------
class Triangulo  extends Figura{
  double base;
  double altura;

  Triangulo(this.base,this.altura);

   @override
   double calcularArea(){
    return (base * base / 2);
   }
   @override
   double calcularPerimetro(){
    return base + base + base;
}
}
//----------------------------------------------------------------------

void main(List<String> args) {
  Circulo circulo = Circulo(5);
  Cuadrado cuadrado = Cuadrado(5);
  Triangulo triangulo = Triangulo(5,6);
  print(circulo.calcularArea());
  print(cuadrado.calcularArea());
  print(triangulo.calcularArea());
   print(circulo.calcularPerimetro());
  print(cuadrado.calcularPerimetro());
  print(triangulo.calcularPerimetro());

}


  
