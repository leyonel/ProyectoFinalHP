import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/bloc.dart';
import 'package:proyecto_hp_final/dominio/personaje.dart';

class ListaEstudiantes extends StatelessWidget {
  const ListaEstudiantes(
      {super.key, required this.estudiantes, required this.casa});

  final List<Personaje> estudiantes;
  final String casa;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HPBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudiantes de la casa $casa"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            bloc.add(IrAInicio());
          },
        ),
      ),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: estudiantes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: estudiantes[index].imagen == ""
                        ? const Icon(Icons.error)
                        : Image.network(estudiantes[index].imagen),
                    title: Text(estudiantes[index].nombre),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Casa: ${estudiantes[index].casa}"),
                        Text("Especie: ${estudiantes[index].especie}"),
                        Text("Genero: ${estudiantes[index].genero}"),
                        Text(
                            "Fecha de Nacimiento: ${estudiantes[index].fechaDeNacimiento}"),
                        Text("Linaje: ${estudiantes[index].linaje}"),
                        Text(
                            "Color de Ojos: ${estudiantes[index].colorDeOjos}"),
                        Text(
                            "Color de Cabello: ${estudiantes[index].colorDeCabello}"),
                        Text("Patronus: ${estudiantes[index].patronus}"),
                        Text("Actor: ${estudiantes[index].actor}"),
                      ],
                    ),
                  );
                }))
      ]),
    );
  }
}
