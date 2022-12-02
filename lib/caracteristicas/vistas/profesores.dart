import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/bloc.dart';
import 'package:proyecto_hp_final/dominio/personaje.dart';

class ListaStaff extends StatelessWidget {
  const ListaStaff({super.key, required this.staff, required this.casa});

  final List<Personaje> staff;
  final String casa;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HPBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Staff de la casa $casa"),
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
                itemCount: staff.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: staff[index].imagen == ""
                        ? const Icon(Icons.error)
                        : Image.network(staff[index].imagen),
                    title: Text(staff[index].nombre),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Casa: ${staff[index].casa}"),
                        Text("Especie: ${staff[index].especie}"),
                        Text("Genero: ${staff[index].genero}"),
                        Text(
                            "Fecha de Nacimiento: ${staff[index].fechaDeNacimiento}"),
                        Text("Linaje: ${staff[index].linaje}"),
                        Text("Color de Ojos: ${staff[index].colorDeOjos}"),
                        Text(
                            "Color de Cabello: ${staff[index].colorDeCabello}"),
                        Text("Patronus: ${staff[index].patronus}"),
                        Text("Actor: ${staff[index].actor}"),
                      ],
                    ),
                  );
                }))
      ]),
    );
  }
}
