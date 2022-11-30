import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:proyecto_hp_final/dominio/hechizo.dart';
import 'package:proyecto_hp_final/dominio/problemas.dart';

abstract class RepositorioHechizos {
  Either<Problema, List<Hechizo>> obtenerHechizos(String documentoHechizos);
}

class RepositorioHechizosPruebas extends RepositorioHechizos {
  @override
  Either<Problema, List<Hechizo>> obtenerHechizos(String documentoHechizos) {
    try {
      JsonDecoder decoder = const JsonDecoder();
      final jsonHechizos = decoder.convert(documentoHechizos);
      List<Hechizo> listaHechizos = [];
      for (var hechizo in jsonHechizos) {
        listaHechizos.add(Hechizo.constructor(
            nombre: hechizo["name"], descripcion: hechizo["description"]));
      }
      return Right(listaHechizos);
    } catch (e) {
      return Left(JsonDesactualizado());
    }
  }
}
