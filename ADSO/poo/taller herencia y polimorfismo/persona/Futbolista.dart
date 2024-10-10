import 'Persona.dart';

class Futbolista extends Persona {
  String _equipo;
  String _posicion;
  int cantidadGoles;

Futbolista(String _nombre, int _edad, this._equipo,this._posicion , this.cantidadGoles):super(_nombre,_edad);

void setEquipo(String Equipo){
  this._equipo = Equipo;
}

String getEquipo(){
  return _equipo;
}

void setPosicion(String Posicion){
  this._posicion = Posicion;
}

String getPosicion(){
  return _posicion;
}

void setCantidadGoles(int cantGoles){
  this.cantidadGoles = cantGoles;
}

int getCantidadGoles(){
  return cantidadGoles;
}

void correr(){
  print(' el futbolista esta corriendo');
}

void hacerPase(){
  print('el futbolista esta haciendo un pase');
}
 bool  esTitular(){
  if (cantidadGoles > 5) {
    return true;
  }else{
    return false;
  }
  
 }
mostrarInformacion(){
  print('Nombre: ${super.getNombre()}');
  print('Edad: ${super.getEdad()}');
  print('Equipo: ${this.getEquipo()}');
  print('Posicion: ${this.getPosicion()}');
  print('Cantidad de goles: ${this.getCantidadGoles()}');
  print(esTitular());
  

  print(esTitular());
}
 }







 