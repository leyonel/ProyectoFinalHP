import 'package:bloc/bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/verificacion/repositorio_hechizos.dart';
import 'package:proyecto_hp_final/caracteristicas/verificacion/repositorio_personajes.dart';
import 'package:proyecto_hp_final/dominio/hechizo.dart';
import 'package:proyecto_hp_final/dominio/personaje.dart';
import 'package:proyecto_hp_final/dominio/problemas.dart';
import 'package:http/http.dart' as http;

class EventoHP {}

class IrAInicio extends EventoHP {}

class IrATodosLosPersonajes extends EventoHP {}

class IrAHechizos extends EventoHP {}

class IrAEstudiantes extends EventoHP {
  final String casa;

  IrAEstudiantes({required this.casa});
}

class IrAProfesores extends EventoHP {
  final String casa;

  IrAProfesores({required this.casa});
}

class EstadoHP {}

class Inicial extends EstadoHP {}

class PaginaPrincipal extends EstadoHP {}

class VerPersonajes extends EstadoHP {
  final List<Personaje> personajes;

  VerPersonajes({required this.personajes});
}

class VerHechizos extends EstadoHP {
  final List<Hechizo> hechizos;

  VerHechizos({required this.hechizos});
}

class VerEstudiantes extends EstadoHP {
  final List<Personaje> estudiantes;
  final String casa;

  VerEstudiantes({required this.estudiantes, required this.casa});
}

class VerProfesores extends EstadoHP {
  final List<Personaje> staff;
  final String casa;

  VerProfesores({required this.staff, required this.casa});
}

class HuboProblemas extends EstadoHP {
  final Problema problema;

  HuboProblemas({required this.problema});
}

class HPBloc extends Bloc<EventoHP, EstadoHP> {
  HPBloc() : super(Inicial()) {
    RepositorioPersonajes repositorioP = RepositorioPersonajesOffline();
    RepositorioHechizos repositorioH = RepositorioHechizosPruebas();
    on<IrAInicio>((event, emit) {
      emit(PaginaPrincipal());
    });
    on<IrATodosLosPersonajes>((event, emit) async {
      try {
        //OFFLINE
//         String datosOfline =
//             """[{"name":"Harry Potter","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"31-07-1980","yearOfBirth":1980,"wizard":true,"ancestry":"half-blood","eyeColour":"green","hairColour":"black","wand":{"wood":"holly","core":"phoenix feather","length":11},"patronus":"stag","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Daniel Radcliffe","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/harry.jpg"},{"name":"Hermione Granger","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"19-09-1979","yearOfBirth":1979,"wizard":true,"ancestry":"muggleborn","eyeColour":"brown","hairColour":"brown","wand":{"wood":"vine","core":"dragon heartstring","length":null},"patronus":"otter","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Emma Watson","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/hermione.jpeg"},{"name":"Ron Weasley","alternate_names":["Dragomir Despard"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"01-03-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"blue","hairColour":"red","wand":{"wood":"willow","core":"unicorn tail-hair","length":14},"patronus":"Jack Russell terrier","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Rupert Grint","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/ron.jpg"},{"name":"Draco Malfoy","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"05-06-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"blonde","wand":{"wood":"hawthorn","core":"unicorn tail-hair","length":10},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Tom Felton","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/draco.jpg"},{"name":"Minerva McGonagall","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"04-10-1925","yearOfBirth":1925,"wizard":true,"ancestry":"","eyeColour":"","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"tabby cat","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Dame Maggie Smith","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/mcgonagall.jpg"},{"name":"Cedric Diggory","alternate_names":[],"species":"human","gender":"male","house":"Hufflepuff","dateOfBirth":"","yearOfBirth":1977,"wizard":true,"ancestry":"","eyeColour":"grey","hairColour":"brown","wand":{"wood":"ash","core":"unicorn hair","length":12.25},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Robert Pattinson","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/cedric.png"}]
// """;

//         String jsonPersonajes = datosOfline;

        final respuestaJson = await http
            .get(Uri.parse('https://hp-api.onrender.com/api/characters'));
        String jsonPersonajes = respuestaJson.body;
        final personajes =
            repositorioP.obtenerTodosLosPersonajes(jsonPersonajes);
        return personajes.match((l) {
          emit(HuboProblemas(problema: l));
        }, (r) {
          emit(VerPersonajes(personajes: r));
        });
      } catch (e) {
        emit(HuboProblemas(problema: RespuestaAPIFallo()));
      }
    });
    on<IrAHechizos>((event, emit) async {
      try {
        //OFFLINE
        // String datosOfline =
        //     """[{"name":"Aberto","description":"Opens locked doors"},{"name":"Accio","description":"Summons objects"},{"name":"Aguamenti","description":"Summons water"},{"name":"Alohomora","description":"Unlocks objects"},{"name":"Anapneo","description":"Clears someone's airway"},{"name":"Aparecium","description":"Reveals secret written messages"}]""";

        // String jsonHechizos = datosOfline;

        final respuestaJson =
            await http.get(Uri.parse('https://hp-api.onrender.com/api/spells'));
        String jsonHechizos = respuestaJson.body;

        final hechizos = repositorioH.obtenerHechizos(jsonHechizos);
        return hechizos.match((l) {
          emit(HuboProblemas(problema: l));
        }, (r) {
          emit(VerHechizos(hechizos: r));
        });
      } catch (e) {
        emit(HuboProblemas(problema: RespuestaAPIFallo()));
      }
    });
    on<IrAEstudiantes>((event, emit) async {
      try {
        String enlace =
            "https://hp-api.onrender.com/api/characters/house/${event.casa}";
        final respuestaJson = await http.get(Uri.parse(enlace));
        String jsonPersonajes = respuestaJson.body;
        final personajes =
            repositorioP.obtenerEstudiantesDeCasa(jsonPersonajes);
        personajes.match((l) {
          emit(HuboProblemas(problema: l));
        }, (r) {
          emit(VerEstudiantes(casa: event.casa, estudiantes: r));
        });
      } catch (e) {
        emit(HuboProblemas(problema: RespuestaAPIFallo()));
      }
    });
    on<IrAProfesores>((event, emit) async {
      try {
        String enlace =
            "https://hp-api.onrender.com/api/characters/house/${event.casa}";
        final respuestaJson = await http.get(Uri.parse(enlace));
        String jsonPersonajes = respuestaJson.body;
        final personajes = repositorioP.obtenerStaffDeCasa(jsonPersonajes);
        personajes.match((l) {
          emit(HuboProblemas(problema: l));
        }, (r) {
          emit(VerProfesores(casa: event.casa, staff: r));
        });
      } catch (e) {
        emit(HuboProblemas(problema: RespuestaAPIFallo()));
      }
    });
  }
}
