import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/bloc.dart';

class VistaPrincipal extends StatelessWidget {
  const VistaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HPBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text("API Harry Potter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(212, 19, 17, 17),
              ),
              child: TextButton(
                  onPressed: () {
                    bloc.add(IrATodosLosPersonajes());
                  },
                  child: const Text("Personajes de Harry Potter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(212, 216, 210, 210)))),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(212, 19, 17, 17),
              ),
              child: TextButton(
                  onPressed: () {
                    bloc.add(IrAHechizos());
                  },
                  child: const Text("Hechizos",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(212, 216, 210, 210)))),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Estudiantes",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAEstudiantes(casa: "gryffindor"));
                      },
                      child: const Text("Gryffindor")),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAEstudiantes(casa: "slytherin"));
                      },
                      child: const Text("Slytherin")),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAEstudiantes(casa: "hufflepuff"));
                      },
                      child: const Text("Hufflepuff")),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAEstudiantes(casa: "ravenclaw"));
                      },
                      child: const Text("Ravenclaw")),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Empleados",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAProfesores(casa: "gryffindor"));
                      },
                      child: const Text("Gryffindor")),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAProfesores(casa: "slytherin"));
                      },
                      child: const Text("Slytherin")),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAProfesores(casa: "hufflepuff"));
                      },
                      child: const Text("Hufflepuff")),
                  TextButton(
                      onPressed: () {
                        bloc.add(IrAProfesores(casa: "ravenclaw"));
                      },
                      child: const Text("Ravenclaw")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
