import 'dart:convert';

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
    try {
      JsonDecoder decoder = const JsonDecoder();
      final jsonPersonajes = decoder.convert(documento);
      List<Personaje> personajes = [];
      for (var personaje in jsonPersonajes) {
        personajes.add(Personaje.constructor(
            nombre: personaje["name"],
            nombreA: personaje["alternate_names"],
            especie: personaje["species"],
            genero: personaje["gender"],
            casa: personaje["house"],
            fechaDeNacimiento: personaje["dateOfBirth"],
            anoNacimiento: personaje["yearOfBirth"],
            esMago: personaje["wizard"],
            linaje: personaje["ancestry"],
            colorDeOjos: personaje["eyeColour"],
            colorDeCabello: personaje["hairColour"],
            varita: personaje["wand"],
            patronus: personaje["patronus"],
            esEstudiante: personaje["hogwartsStudent"],
            esStaff: personaje["hogwartsStaff"],
            actor: personaje["actor"],
            actoresA: personaje["alternate_actors"],
            estaVivo: personaje["alive"],
            imagen: personaje["image"]));
      }
      return Right(personajes);
    } catch (e) {
      return Left(JsonDesactualizado());
    }
  }
}
