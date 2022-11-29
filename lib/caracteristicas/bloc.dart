import 'package:bloc/bloc.dart';

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

class VerPersonajes extends EstadoHP {}

class VerHechizos extends EstadoHP {}

class VerEstudiantes extends EstadoHP {}

class VerProfesores extends EstadoHP {}

class HPBloc extends Bloc<EventoHP, EstadoHP> {
  HPBloc() : super(Inicial()) {
    on<IrAInicio>((event, emit) {
      emit(PaginaPrincipal());
    });
  }
}
