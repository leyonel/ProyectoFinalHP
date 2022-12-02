import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/vistas/estudiantes.dart';
import 'package:proyecto_hp_final/caracteristicas/vistas/hechizos.dart';
import 'package:proyecto_hp_final/caracteristicas/vistas/personajes.dart';
import 'package:proyecto_hp_final/caracteristicas/vistas/principal.dart';

void main() {
  runApp(const AplicacionBloc());
}

class AplicacionBloc extends StatelessWidget {
  const AplicacionBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        HPBloc bloc = HPBloc();
        Future.delayed(const Duration(seconds: 2), () {
          bloc.add(IrAInicio());
        });
        return bloc;
      },
      child: const Vista(),
    );
  }
}

class Vista extends StatelessWidget {
  const Vista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: ((context) {
        var estado = context.watch<HPBloc>().state;
        if (estado is PaginaPrincipal) {
          return const VistaPrincipal();
        }
        if (estado is VerPersonajes) {
          return ListaPersonajes(personajes: estado.personajes);
        }
        if (estado is VerHechizos) {
          return ListaHechizos(hechizos: estado.hechizos);
        }
        if (estado is VerEstudiantes) {
          return ListaEstudiantes(
              estudiantes: estado.estudiantes, casa: estado.casa);
        }
        return const Center(child: Text("huye"));
      })),
    );
  }
}
