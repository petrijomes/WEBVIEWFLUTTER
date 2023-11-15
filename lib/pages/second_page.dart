import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/webview/youtube.dart';
import 'package:flutter_application_1/pages/webview/fornite.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final GlobalKey<WebYoutubeState> webYoutubeKey = GlobalKey<WebYoutubeState>();
  final GlobalKey<WebForniteState> webForniteKey = GlobalKey<WebForniteState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fornite News'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    "el regreso del mapa original!",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Epic Games ha lanzado la nueva actualización de Fortnite, que trae consigo una gran cantidad de novedades, pero la más destacada es el regreso del mapa original del juego. El mapa original de Fortnite fue el que estuvo disponible desde el lanzamiento del juego en 2017 hasta el inicio del Capítulo 2 en 2020.\nEste mapa era muy querido por los jugadores, que lo asocian con los inicios del juego y con algunos de los momentos más memorables de su historia. En la nueva actualización, el mapa original ha sido ligeramente modificado para adaptarse a las nuevas mecánicas de juego del Capítulo 3. Por ejemplo, ahora hay más puntos de interés, se han añadido nuevas armas y vehículos, y se han realizado algunos cambios en el terreno.",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                        "https://i.blogs.es/f22e93/f98xzfkxiaachuu/1024_2000.jpeg",
                        height: 300),
                  ),
                  const Text("Enterate mas del regreso del mapa OG",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WebYoutube(key: webYoutubeKey),
                        ),
                      );
                    },
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    child: const Text(
                      'Youtube playlist',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Text("Unete a la experiencia!",
                      style: TextStyle(fontSize: 30, color: Colors.yellow)),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/forniteduo.png',
                          height: 200,
                          width: 300,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => WebFornite(key: webForniteKey),
                            ),
                          );
                        },
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 39, vertical: 12),
                        child: const Text('Fornite.com',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
