import 'package:bloc/bloc.dart';
import 'package:proyecto_hp_final/caracteristicas/verificacion/repositorio_personajes.dart';
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

class VerHechizos extends EstadoHP {}

class VerEstudiantes extends EstadoHP {}

class VerProfesores extends EstadoHP {}

class HuboProblemas extends EstadoHP {
  final Problema problema;

  HuboProblemas({required this.problema});
}

class HPBloc extends Bloc<EventoHP, EstadoHP> {
  HPBloc() : super(Inicial()) {
    RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
    on<IrAInicio>((event, emit) {
      emit(PaginaPrincipal());
    });
    on<IrATodosLosPersonajes>((event, emit) async {
      try {
        final respuestaJson = await http
            .get(Uri.parse('https://hp-api.onrender.com/api/characters'));
        String jsonPersonajes = respuestaJson.body;
        final personajes =
            repositorio.obtenerTodosLosPersonajes(jsonPersonajes);
        personajes.match((l) {
          emit(HuboProblemas(problema: l));
        }, (r) {
          emit(VerPersonajes(personajes: r));
        });
      } catch (e) {
        emit(HuboProblemas(problema: RespuestaAPIFallo()));
      }
    });
  }
}
