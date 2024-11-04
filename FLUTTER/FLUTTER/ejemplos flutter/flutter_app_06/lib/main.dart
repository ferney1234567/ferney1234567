import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismos',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Turismos')),
          backgroundColor: const Color.fromARGB(255, 41, 4, 252),
          foregroundColor: const Color.fromARGB(255, 243, 235, 9),
        ),
        
        body: ListView.builder(
          itemCount: sitios_turisticos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(sitios_turisticos[index]),
                subtitle: Text('Sitio turístico: ${index + 1}'),
                leading: const Icon(Icons.add_a_photo),
              trailing: const Icon(Icons.add_circle_rounded), 
              onTap: (){
                showDialog(context: context, 
                           builder: (BuildContext context){
                            return  AlertDialog(
                              title: const Text('Sitio turístico: '),
                              content: Text(sitios_turisticos[index]),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.of(context).pop();
                                }, 
                                child: const Text("cerrar"))
                              ],
                            );
                           }
                           );
              },
              ),
            );
          },
        ),
      )
      ); 
  }
}
List<String> sitios_turisticos = [
  "La Gran Muralla China",
    "Las Pirámides de Giza, Egipto",
    "El Coliseo, Roma",
    "Taj Mahal, India",
    "Estatua de la Libertad, Nueva York",
    "Machu Picchu, Perú",
    "La Torre Eiffel, París",
    "Santorini, Grecia",
    "Stonehenge, Inglaterra",
    "El Cristo Redentor, Brasil",
    "El Parque Nacional Yellowstone, EE. UU.",
    "La Sagrada Familia, Barcelona",
    "El Palacio de Versalles, Francia",
    "La Ópera de Sídney, Australia",
    "El Taj Mahal, India",
    "El Parque Nacional de Banff, Canadá",
    "Las Cataratas del Niágara, Canadá/EE. UU.",
    "El Mercado de Chatuchak, Tailandia",
    "Las Torres Petronas, Malasia",
    "El Kremlin, Moscú",
    "El Museo del Louvre, París",
    "La Ciudad Prohibida, Pekín",
    "La Isla de Pascua, Chile",
    "El Acueducto de Segovia, España",
    "Las Islas Maldivas",
    "La Catedral de San Basilio, Moscú",
    "El Monte Fuji, Japón",
    "La Plaza Roja, Moscú",
    "El Jardín de Versalles, Francia",
    "El Parque Nacional de Yosemite, EE. UU.",
    "El Monte Rushmore, EE. UU.",
    "La Muralla de Adriano, Inglaterra",
    "Las Ruinas de Petra, Jordania",
    "La Catedral de Notre-Dame, París",
    "El Puente de Brooklyn, Nueva York",
    "El Museo Británico, Londres",
    "El Gran Cañón, EE. UU.",
    "Las playas de Bora Bora, Polinesia Francesa",
    "La Plaza de España, Sevilla",
    "La Casa Blanca, Washington D.C.",
    "El Valle de los Reyes, Egipto",
    "El Palacio de Buckingham, Londres",
    "La Gran Barrera de Coral, Australia",
    "El Monte Kilimanjaro, Tanzania",
    "El Palacio de Invierno, San Petersburgo",
    "El Jardín Botánico de Singapur",
    "El Palacio Real, Bangkok",
    "El Templo de Angkor Wat, Camboya",
    "La Cúpula de San Pedro, Ciudad del Vaticano",
    "Las Montañas Rocosas, Canadá",
    "El Parque Nacional Torres del Paine, Chile",
    "El Castillo de Neuschwanstein, Alemania",
    "La Plaza de San Pedro, Ciudad del Vaticano",
    "El Mercado de San Miguel, Madrid",
    "La Ópera de Viena, Austria",
    "El Parque Nacional de Glacier, EE. UU.",
    "Las Siete Maravillas del Mundo Antiguo",
    "El Museo de Arte Moderno, Nueva York",
    "La Catedral de Colonia, Alemania",
    "El Acantilado de Moher, Irlanda",
    "El Monte Etna, Italia",
    "Las Ruinas de Machu Picchu, Perú",
    "El Parque Nacional Kruger, Sudáfrica",
    "La Torre de Pisa, Italia",
    "El Castillo de Edimburgo, Escocia",
    "El Parque Nacional de las Secuoyas, EE. UU.",
    "El Mercado de La Boquería, Barcelona",
    "La Ciudad Antigua de Dubrovnik, Croacia",
    "El Faro de Alejandría, Egipto",
    "La Catedral de Santiago de Compostela, España",
    "El Parque Nacional de Zion, EE. UU.",
    "Las Montañas de los Apalaches, EE. UU.",
    "El Templo del Cielo, Pekín",
    "La Isla de Santorini, Grecia",
    "El Centro Histórico de México City, México",
    "El Museo del Prado, Madrid",
    "El Parque Nacional de los Glaciares, Argentina",
    "La Plaza de Toros de Las Ventas, Madrid",
    "El Acueducto de Nîmes, Francia",
    "La Isla de Bali, Indonesia",
    "El Parque Nacional de los Lagos de Plitvice, Croacia",
    "La Catedral de San Patricio, Nueva York",
    "El Circuito de Mónaco",
    "Las Ruinas de Chichén Itzá, México",
    "El Jardín de la Tuileries, París",
    "El Museo Nacional de Antropología, Ciudad de México",
    "La Plaza del Duomo, Florencia",
    "Las Playas de Cancún, México",
    "El Lago Ness, Escocia",
    "El Parque Nacional de Yosemite, EE. UU.",
    "La Casa de Anne Frank, Ámsterdam",
    "Las Murallas de Ávila, España",
    "El Parque Nacional de los Fiordos de Noruega",
    "La Ciudad Vieja de Jerusalén",
    "El Puente de la Torre, Londres",
    "La Isla de Capri, Italia",
    "El Templo de Luxor, Egipto",
    "La Ciudad de Petra, Jordania",
    "La Plaza de la Revolución, Cuba",
    "El Castillo de Chambord, Francia",
    "El Parque Nacional de los Lagos de Plitvice, Croacia"
];
