import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gamer News'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/fornite1.png',
                width: 200,
                height: 200,
              ),
              label: const Text(
                  'Nueva temporada fornite OG. Esta temporada trae de regreso el mapa original.'),
            ),
          ),
        ],
      ),
    );
  }
}
