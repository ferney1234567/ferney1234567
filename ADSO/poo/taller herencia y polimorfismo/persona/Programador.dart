import 'dart:ffi';

import 'Persona.dart';

class Programador  extends Persona{
  String _empresa;
  double _salario;

  Programador( String _nombre , int _edad, this._empresa, this._salario):super (_nombre,_edad);

  void setEmpresa(String Empresa){
    this._empresa = Empresa;

}

  String getEmpresa(){
  return _empresa;
}

 void setSalario(double Salario){
  this._salario = Salario;
}

 double getSalario(){
  return _salario;

 }

 void estaProgramando(){
  print('la persona esta programando');
 }
 void codificando(){
  print('la persona esta codificando');
  
 }
  double obtenerSalarioNeto(){
  double descuento;
  descuento = _salario * 0.11;
  _salario = _salario - descuento;
  return _salario ;
  
}


}
