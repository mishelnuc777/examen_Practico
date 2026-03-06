import 'package:flutter/material.dart';
import 'detalle_persona.dart';

class ListaPersonasPage extends StatelessWidget {

  final String nombre;
  final String cedula;
  final String edad;
  final String ciudad;

  ListaPersonasPage({
    required this.nombre,
    required this.cedula,
    required this.edad,
    required this.ciudad,
  });

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> personas = [
      {
        "nombre": nombre,
        "cedula": cedula,
        "edad": edad,
        "ciudad": ciudad
      }
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Personas Registradas")),

      body: ListView.builder(
        itemCount: personas.length,
        itemBuilder: (context, index) {

          final persona = personas[index];

          return ListTile(
            title: Text(persona["nombre"]!),
            subtitle: Text(persona["cedula"]!),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallePersonaPage(
                    nombre: persona["nombre"]!,
                    cedula: persona["cedula"]!,
                    edad: persona["edad"]!,
                    ciudad: persona["ciudad"]!,
                  ),
                ),
              );
            },
          );

        },
      ),
    );
  }
}