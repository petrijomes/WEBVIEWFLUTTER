import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gamer News'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                // Navegar a la siguiente página utilizando Navigator.push
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(), // Usar Page2 como la siguiente página
                  ),
                );
              },
              icon: Image.asset(
                'assets/fornite1.png', // Ruta de la imagen en el archivo pubspec.yaml
                width: 200, // Ancho de la imagen (ajusta según sea necesario)
                height: 200, // Altura de la imagen (ajusta según sea necesario)
              ),
              label: Text(
                  'Nueva temporada fornite OG. Esta temporada trae de regreso el mapa original.'), // Texto del botón
            ),
          ),
        ],
      ),
    );
  }
}
