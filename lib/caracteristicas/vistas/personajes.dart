import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/bloc.dart';
import 'package:proyecto_hp_final/dominio/personaje.dart';

class ListaPersonajes extends StatelessWidget {
  const ListaPersonajes({super.key, required this.personajes});

  final List<Personaje> personajes;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HPBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ver todos los personajes"),
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
                itemCount: personajes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: personajes[index].imagen == ""
                        ? const Icon(Icons.error)
                        : Image.network(personajes[index].imagen),
                    title: Text(personajes[index].nombre),
                    subtitle: Text(personajes[index].casa),
                  );
                }))
      ]),
    );
  }
}
