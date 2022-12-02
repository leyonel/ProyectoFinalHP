class Personaje {
  final String nombre;
  final dynamic nombreA;
  final String especie;
  final String genero;
  final String casa;
  final String fechaDeNacimiento;
  final int anoNacimiento;
  final bool esMago;
  final String linaje;
  final String colorDeOjos;
  final String colorDeCabello;
  final dynamic varita;
  final String patronus;
  final bool esEstudiante;
  final bool esStaff;
  final String actor;
  final dynamic actoresA;
  final bool estaVivo;
  final String imagen;

  factory Personaje.constructor(
      {required String nombre,
      required dynamic nombreA,
      required String especie,
      required String genero,
      required String casa,
      required String fechaDeNacimiento,
      required int anoNacimiento,
      required bool esMago,
      required String linaje,
      required String colorDeOjos,
      required String colorDeCabello,
      required dynamic varita,
      required String patronus,
      required bool esEstudiante,
      required bool esStaff,
      required String actor,
      required dynamic actoresA,
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

    String imagenNuevo = "https://hp-api.onrender.com/images/";
    String jpgPersonaje = imagen.split("/").last;

    imagenNuevo = imagenNuevo + jpgPersonaje;

    if (imagen == "") imagenNuevo = "";

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
        imagenNuevo);
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
