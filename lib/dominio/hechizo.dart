class Hechizo {
  final String nombre;
  final String descripcion;

  factory Hechizo.constructor(
      {required String nombre, required String descripcion}) {
    nombre == "" ? nombre = "No encontrado" : null;
    descripcion == "" ? descripcion = "No encontrado" : null;
    return Hechizo._(nombre, descripcion);
  }

  Hechizo._(this.nombre, this.descripcion);
}
