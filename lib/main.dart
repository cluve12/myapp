import 'package:flutter/material.dart';

void main() => runApp(const AppCarlsjr());

class AppCarlsjr extends StatelessWidget {
  const AppCarlsjr({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: losHamburguesas(),
    );
  }
}

class losHamburguesas extends StatelessWidget {
  const losHamburguesas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- APPBAR (Anteriormente creado) ---
      appBar: AppBar(
        
        title: const Text(
          "carls jr isaac",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: const Icon(Icons.restaurant_menu, color: Colors.white),
        actions: const [
          Icon(Icons.build, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.warning, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.camera_alt, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),

      // --- BODY CON LAS 4 TARJETAS ---
      body: ListView(
        padding: const EdgeInsets.all(15), // Margen alrededor de la lista
        children: [
          // Llamamos a una función que crea la tarjeta para no repetir código
          itemTarjeta('https://raw.githubusercontent.com/cluve12/imagebes-para-flutter-6I-11-02-26/refs/heads/main/descarga%20(1).png'),
          itemTarjeta('https://raw.githubusercontent.com/cluve12/imagebes-para-flutter-6I-11-02-26/refs/heads/main/descarga%20(2).png'),
          itemTarjeta('https://raw.githubusercontent.com/cluve12/imagebes-para-flutter-6I-11-02-26/refs/heads/main/descarga.png'),
          itemTarjeta('https://raw.githubusercontent.com/cluve12/imagebes-para-flutter-6I-11-02-26/refs/heads/main/doublewesternbeaconcheeseburguer.png'),
        ],
      ),
    );
  }
  // Widget auxiliar para crear cada tarjeta (Nivel Básico)
  Widget itemTarjeta(String urlImagen) {
    return Card(
      color: const Color.fromARGB(255, 255, 231, 95), // Fondo verde claro
      elevation: 5, // Sombreado
      margin: const EdgeInsets.only(bottom: 15), // Espacio entre tarjetas
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Bordes redondeados
      ),
      child: ListTile(
        // leading: Imagen tipo avatar desde la RED
        leading: CircleAvatar(backgroundImage: NetworkImage(urlImagen)),
        // Título a la derecha
        title: const Text(
          "Título de Tarjeta",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // Subtítulo a la derecha
        subtitle: const Text(
          "Subtítulo de la hamburguesa",
          style: TextStyle(color: Colors.black),
        ),
        // Icono de Like rojo a la derecha
        trailing: const Icon(Icons.favorite, color: Colors.red),
      ),
    );
  }
}
