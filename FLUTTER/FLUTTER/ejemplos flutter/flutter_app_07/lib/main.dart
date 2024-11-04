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
          title: const Center(child: Text('juegos')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.orange,
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: const [
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 1"),
                    Icon(Icons.abc),
                    Text("texto1")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 2"),
                    Icon(Icons.abc),
                    Text("texto2")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 3"),
                    Icon(Icons.abc),
                    Text("texto3")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 4"),
                    Icon(Icons.abc),
                    Text("texto4")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 5"),
                    Icon(Icons.abc),
                    Text("texto5")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 6"),
                    Icon(Icons.abc),
                    Text("texto6")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 7"),
                    Icon(Icons.abc),
                    Text("texto7")
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 8"),
                    Icon(Icons.format_bold_outlined),
                    Text("texto8")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}