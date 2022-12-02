import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/bloc.dart';
import 'package:proyecto_hp_final/dominio/hechizo.dart';

class ListaHechizos extends StatelessWidget {
  const ListaHechizos({super.key, required this.hechizos});

  final List<Hechizo> hechizos;

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HPBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ver todos los hechizos"),
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
                itemCount: hechizos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(hechizos[index].nombre),
                    subtitle: Text(hechizos[index].descripcion),
                  );
                }))
      ]),
    );
  }
}
