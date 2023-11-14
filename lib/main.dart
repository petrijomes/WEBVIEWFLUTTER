import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gamer news',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 68, 188, 244), // Establece el color de fondo en negro
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(
              255, 56, 55, 55), // Establece el color de la AppBar en negro
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
