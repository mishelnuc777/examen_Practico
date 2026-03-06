import 'package:flutter/material.dart';
import 'lista_personas.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {

  TextEditingController nombre = TextEditingController();
  TextEditingController cedula = TextEditingController();
  TextEditingController edad = TextEditingController();
  String ciudad = "Quito";

  List<String> ciudades = [
    "Quito",
    "Guayaquil",
    "Cuenca",
    "Manta",
    "Ambato"
  ];

  void guardar() {

    if(nombre.text.isEmpty || cedula.text.isEmpty || edad.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Complete todos los campos"))
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListaPersonasPage(
          nombre: nombre.text,
          cedula: cedula.text,
          edad: edad.text,
          ciudad: ciudad,
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro de Persona")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [

            TextField(
              controller: nombre,
              decoration: InputDecoration(labelText: "Nombre completo"),
            ),

            TextField(
              controller: cedula,
              decoration: InputDecoration(labelText: "Cédula"),
              keyboardType: TextInputType.number,
            ),

            TextField(
              controller: edad,
              decoration: InputDecoration(labelText: "Edad"),
              keyboardType: TextInputType.number,
            ),

            DropdownButtonFormField(
              value: ciudad,
              items: ciudades.map((c) {
                return DropdownMenuItem(
                  value: c,
                  child: Text(c),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  ciudad = value.toString();
                });
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: guardar,
              child: Text("Guardar Registro"),
            )

          ],
        ),
      ),
    );
  }
}