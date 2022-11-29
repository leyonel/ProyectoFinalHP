import 'package:bloc/bloc.dart';

class EventoHP {}

class IrAInicio extends EventoHP {}

class EstadoHP {}

class Inicial extends EstadoHP {}

class PaginaPrincipal extends EstadoHP {}

class HPBloc extends Bloc<EventoHP, EstadoHP> {
  HPBloc() : super(Inicial()) {
    on<IrAInicio>((event, emit) {
      emit(PaginaPrincipal());
    });
  }
}
