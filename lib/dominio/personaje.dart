class Personaje {
  final String nombre;
  final Map nombreA;
  final String especie;
  final String genero;
  final String casa;
  final String fechaDeNacimiento;
  final int anoNacimiento;
  final bool esMago;
  final String linaje;
  final String colorDeOjos;
  final String colorDeCabello;
  final Map varita;
  final String patronus;
  final bool esEstudiante;
  final bool esStaff;
  final String actor;
  final Map actoresA;
  final bool estaVivo;
  final String imagen;

  factory Personaje.constructor(
      {required String nombre,
      required Map nombreA,
      required String especie,
      required String genero,
      required String casa,
      required String fechaDeNacimiento,
      required int anoNacimiento,
      required bool esMago,
      required String linaje,
      required String colorDeOjos,
      required String colorDeCabello,
      required Map varita,
      required String patronus,
      required bool esEstudiante,
      required bool esStaff,
      required String actor,
      required Map actoresA,
      required bool estaVivo,
      required String imagen}) {
    nombre == "" ? nombre = "No encontrado" : null;
    especie == "" ? especie = "No encontrado" : null;
    genero == "" ? genero = "No encontrado" : null;
    casa == "" ? casa = "No encontrado" : null;
    fechaDeNacimiento == "" ? fechaDeNacimiento = "No encontrado" : null;
    linaje == "" ? linaje = "No encontrado" : null;
    colorDeOjos == "" ? colorDeOjos = "No encontrado" : null;
    colorDeCabello == "" ? colorDeCabello = "No encontrado" : null;
    patronus == "" ? patronus = "No encontrado" : null;
    actor == "" ? actor = "No encontrado" : null;

    return Personaje._(
        nombre,
        nombreA,
        especie,
        genero,
        casa,
        fechaDeNacimiento,
        anoNacimiento,
        esMago,
        linaje,
        colorDeOjos,
        colorDeCabello,
        varita,
        patronus,
        esEstudiante,
        esStaff,
        actor,
        actoresA,
        estaVivo,
        imagen);
  }

  Personaje._(
      this.nombre,
      this.nombreA,
      this.especie,
      this.genero,
      this.casa,
      this.fechaDeNacimiento,
      this.anoNacimiento,
      this.esMago,
      this.linaje,
      this.colorDeOjos,
      this.colorDeCabello,
      this.varita,
      this.patronus,
      this.esEstudiante,
      this.esStaff,
      this.actor,
      this.actoresA,
      this.estaVivo,
      this.imagen);
}
