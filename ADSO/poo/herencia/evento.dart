class Evento {
  String _nombre;//atributo privado
  int cantidadPersonas;//atributo publico
  DateTime _fecha;//atributo privado

//constructor
  Evento(this._nombre,this.cantidadPersonas,this._fecha);

  //metodos setters y getters
  void setNombre(String nom){
    this._nombre = nom;
  }
  String getNonbre(){
    return this._nombre;
  }
  void setCantidadPersonas( int cantPers){
    this.cantidadPersonas = cantPers;
  }
  int  getCantidadPersonas(){
    return this.cantidadPersonas;
  }
  void setFecha(DateTime fecha){
    this._fecha = fecha;
  }
  DateTime getFecha(){
    return this._fecha;
  }

}