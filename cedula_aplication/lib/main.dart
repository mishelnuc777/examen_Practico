import 'package:flutter/material.dart';
import 'registro.dart';

void main() {
  runApp(ValidaCedulaApp());
}

class ValidaCedulaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de Personas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistroPage(),
    );
  }
}