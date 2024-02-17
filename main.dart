import 'package:flutter/material.dart';
import 'package:examen1_katiaperdomo_62111428/screens/book_list_screen.dart'; // Importa la pantalla de lista de libros

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Libros de Stephen King',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Aquí puedes definir un tema personalizado si lo deseas
      ),
      home: BookListScreen(), // Define la pantalla principal de la aplicación
    );
  }
}