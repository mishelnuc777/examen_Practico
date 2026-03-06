import 'package:flutter/material.dart';

class DetallePersonaPage extends StatelessWidget {

  final String nombre;
  final String cedula;
  final String edad;
  final String ciudad;

  DetallePersonaPage({
    required this.nombre,
    required this.cedula,
    required this.edad,
    required this.ciudad,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle Persona")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Nombre: $nombre"),
            Text("Cédula: $cedula"),
            Text("Edad: $edad"),
            Text("Ciudad: $ciudad"),

          ],
        ),
      ),
    );
  }
}