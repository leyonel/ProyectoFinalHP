import 'package:fpdart/fpdart.dart';
import 'package:proyecto_hp_final/dominio/personaje.dart';
import 'package:proyecto_hp_final/dominio/problemas.dart';

abstract class RepositorioPersonajes {
  Either<Problema, List<Personaje>> obtenerTodosLosPersonajes(String documento);
  Either<Problema, List<Personaje>> obtenerStaffDeCasa(
      String documento, String casa);
  Either<Problema, List<Personaje>> obtenerEstudiantesDeCasa(
      String documento, String casa);
}

class RepositorioPersonajesOffline extends RepositorioPersonajes {
  @override
  Either<Problema, List<Personaje>> obtenerEstudiantesDeCasa(
      String documento, String casa) {
    // TODO: implement obtenerEstudiantesDeCasa
    throw UnimplementedError();
  }

  @override
  Either<Problema, List<Personaje>> obtenerStaffDeCasa(
      String documento, String casa) {
    // TODO: implement obtenerStaffDeCasa
    throw UnimplementedError();
  }

  @override
  Either<Problema, List<Personaje>> obtenerTodosLosPersonajes(
      String documento) {
    // TODO: implement obtenerTodosLosPersonajes
    throw UnimplementedError();
  }
}
