import 'evento.dart';

void main(List<String> args) {
  Evento myEvent = Evento("expociciones adso", 15, DateTime(2024,8,22,7));
  print(myEvent.getNonbre());
  myEvent.setNombre("expociciones poo adso");
  print(myEvent.getNonbre());
  myEvent.setCantidadPersonas(13);
  print(myEvent.getCantidadPersonas());
  print(myEvent.cantidadPersonas);//se accede al atributo publico
}