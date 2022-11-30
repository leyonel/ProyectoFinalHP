import 'package:proyecto_hp_final/caracteristicas/verificacion/repositorio_personajes.dart';
import 'package:test/test.dart';

void main() {
  String documento =
      """[{"name":"Harry Potter","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"31-07-1980","yearOfBirth":1980,"wizard":true,"ancestry":"half-blood","eyeColour":"green","hairColour":"black","wand":{"wood":"holly","core":"phoenix feather","length":11},"patronus":"stag","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Daniel Radcliffe","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/harry.jpg"},{"name":"Hermione Granger","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"19-09-1979","yearOfBirth":1979,"wizard":true,"ancestry":"muggleborn","eyeColour":"brown","hairColour":"brown","wand":{"wood":"vine","core":"dragon heartstring","length":null},"patronus":"otter","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Emma Watson","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/hermione.jpeg"},{"name":"Ron Weasley","alternate_names":["Dragomir Despard"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"01-03-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"blue","hairColour":"red","wand":{"wood":"willow","core":"unicorn tail-hair","length":14},"patronus":"Jack Russell terrier","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Rupert Grint","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/ron.jpg"},{"name":"Draco Malfoy","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"05-06-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"blonde","wand":{"wood":"hawthorn","core":"unicorn tail-hair","length":10},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Tom Felton","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/draco.jpg"},{"name":"Minerva McGonagall","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"04-10-1925","yearOfBirth":1925,"wizard":true,"ancestry":"","eyeColour":"","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"tabby cat","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Dame Maggie Smith","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/mcgonagall.jpg"},{"name":"Cedric Diggory","alternate_names":[],"species":"human","gender":"male","house":"Hufflepuff","dateOfBirth":"","yearOfBirth":1977,"wizard":true,"ancestry":"","eyeColour":"grey","hairColour":"brown","wand":{"wood":"ash","core":"unicorn hair","length":12.25},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Robert Pattinson","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/cedric.png"},{"name":"Cho Chang","alternate_names":[],"species":"human","gender":"female","house":"Ravenclaw","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"","eyeColour":"brown","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"swan","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Katie Leung","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/cho.jpg"},{"name":"Severus Snape","alternate_names":["Half-Blood Prince"],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"09-01-1960","yearOfBirth":1960,"wizard":true,"ancestry":"half-blood","eyeColour":"black","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"doe","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Alan Rickman","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/snape.jpg"},{"name":"Rubeus Hagrid","alternate_names":[],"species":"half-giant","gender":"male","house":"Gryffindor","dateOfBirth":"06-12-1928","yearOfBirth":1928,"wizard":true,"ancestry":"half-blood","eyeColour":"black","hairColour":"black","wand":{"wood":"oak","core":"","length":16},"patronus":"","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Robbie Coltrane","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/hagrid.png"},{"name":"Neville Longbottom","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"30-07-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"","hairColour":"blonde","wand":{"wood":"cherry","core":"unicorn tail-hair","length":13},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Matthew Lewis","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/neville.jpg"},{"name":"Luna Lovegood","alternate_names":[],"species":"human","gender":"female","house":"Ravenclaw","dateOfBirth":"13-02-1981","yearOfBirth":1981,"wizard":true,"ancestry":"","eyeColour":"grey","hairColour":"blonde","wand":{"wood":"","core":"","length":null},"patronus":"hare","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Evanna Lynch","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/luna.jpg"},{"name":"Ginny Weasley","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"11-08-1981","yearOfBirth":1981,"wizard":true,"ancestry":"pure-blood","eyeColour":"brown","hairColour":"red","wand":{"wood":"yew","core":"","length":null},"patronus":"horse","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Bonnie Wright","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/ginny.jpg"},{"name":"Sirius Black","alternate_names":["Padfoot","Snuffles"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"03-11-1959","yearOfBirth":1959,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"hare","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Gary Oldman","alternate_actors":["James Walters","Rohan Gotobed"],"alive":false,"image":"https://hp-api.herokuapp.com/images/sirius.JPG"},{"name":"Remus Lupin","alternate_names":["Professor Lupin","Moony","Remus John Lupin"],"species":"werewolf","gender":"male","house":"Gryffindor","dateOfBirth":"10-03-1960","yearOfBirth":1960,"wizard":true,"ancestry":"half-blood","eyeColour":"green","hairColour":"brown","wand":{"wood":"cypress","core":"unicorn tail-hair","length":10.25},"patronus":"wolf","hogwartsStudent":false,"hogwartsStaff":true,"actor":"David Thewlis","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/lupin.jpg"},{"name":"Arthur Weasley","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"06-02-1950","yearOfBirth":1950,"wizard":true,"ancestry":"pure-blood","eyeColour":"blue","hairColour":"red","wand":{"wood":"","core":"","length":null},"patronus":"weasel","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Mark Williams","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/arthur.jpg"},{"name":"Bellatrix Lestrange","alternate_names":["Bella"],"species":"human","gender":"female","house":"Slytherin","dateOfBirth":"","yearOfBirth":1951,"wizard":true,"ancestry":"pure-blood","eyeColour":"brown","hairColour":"black","wand":{"wood":"walnut","core":"dragon heartstring","length":12.75},"patronus":"","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Helena Bonham Carter","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/bellatrix.jpg"},{"name":"Lord Voldemort","alternate_names":["Tom Marvolo Riddle"],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"31-12-1926","yearOfBirth":1926,"wizard":true,"ancestry":"half-blood","eyeColour":"red","hairColour":"bald","wand":{"wood":"yew","core":"phoenix feather","length":13.5},"patronus":"","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Ralph Fiennes","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/voldemort.jpg"}]""";
  String documentoGryffindor =
      """[{"name":"Harry Potter","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"31-07-1980","yearOfBirth":1980,"wizard":true,"ancestry":"half-blood","eyeColour":"green","hairColour":"black","wand":{"wood":"holly","core":"phoenix feather","length":11},"patronus":"stag","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Daniel Radcliffe","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/harry.jpg"},{"name":"Hermione Granger","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"19-09-1979","yearOfBirth":1979,"wizard":true,"ancestry":"muggleborn","eyeColour":"brown","hairColour":"brown","wand":{"wood":"vine","core":"dragon heartstring","length":null},"patronus":"otter","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Emma Watson","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/hermione.jpeg"},{"name":"Ron Weasley","alternate_names":["Dragomir Despard"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"01-03-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"blue","hairColour":"red","wand":{"wood":"willow","core":"unicorn tail-hair","length":14},"patronus":"Jack Russell terrier","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Rupert Grint","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/ron.jpg"},{"name":"Minerva McGonagall","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"04-10-1925","yearOfBirth":1925,"wizard":true,"ancestry":"","eyeColour":"","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"tabby cat","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Dame Maggie Smith","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/mcgonagall.jpg"},{"name":"Rubeus Hagrid","alternate_names":[],"species":"half-giant","gender":"male","house":"Gryffindor","dateOfBirth":"06-12-1928","yearOfBirth":1928,"wizard":true,"ancestry":"half-blood","eyeColour":"black","hairColour":"black","wand":{"wood":"oak","core":"","length":16},"patronus":"","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Robbie Coltrane","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/hagrid.png"},{"name":"Neville Longbottom","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"30-07-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"","hairColour":"blonde","wand":{"wood":"cherry","core":"unicorn tail-hair","length":13},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Matthew Lewis","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/neville.jpg"},{"name":"Ginny Weasley","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"11-08-1981","yearOfBirth":1981,"wizard":true,"ancestry":"pure-blood","eyeColour":"brown","hairColour":"red","wand":{"wood":"yew","core":"","length":null},"patronus":"horse","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Bonnie Wright","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/ginny.jpg"},{"name":"Sirius Black","alternate_names":["Padfoot","Snuffles"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"03-11-1959","yearOfBirth":1959,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"hare","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Gary Oldman","alternate_actors":["James Walters","Rohan Gotobed"],"alive":false,"image":"https://hp-api.herokuapp.com/images/sirius.JPG"},{"name":"Remus Lupin","alternate_names":["Professor Lupin","Moony","Remus John Lupin"],"species":"werewolf","gender":"male","house":"Gryffindor","dateOfBirth":"10-03-1960","yearOfBirth":1960,"wizard":true,"ancestry":"half-blood","eyeColour":"green","hairColour":"brown","wand":{"wood":"cypress","core":"unicorn tail-hair","length":10.25},"patronus":"wolf","hogwartsStudent":false,"hogwartsStaff":true,"actor":"David Thewlis","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/lupin.jpg"},{"name":"Arthur Weasley","alternate_names":[],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"06-02-1950","yearOfBirth":1950,"wizard":true,"ancestry":"pure-blood","eyeColour":"blue","hairColour":"red","wand":{"wood":"","core":"","length":null},"patronus":"weasel","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Mark Williams","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/arthur.jpg"},{"name":"Lily Potter","alternate_names":[],"species":"human","gender":"female","house":"Gryffindor","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"muggleborn","eyeColour":"green","hairColour":"","wand":{"wood":"willow","core":"","length":10.25},"patronus":"","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Geraldine Somerville","alternate_actors":[],"alive":false,"image":""},{"name":"James Potter","alternate_names":["Prongs"],"species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"","eyeColour":"","hairColour":"black","wand":{"wood":"mahogany","core":"","length":11},"patronus":"stag","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Adrian Rawlins","alternate_actors":[],"alive":false,"image":""}]""";
  String documentoSlytherin =
      """[{"name":"Draco Malfoy","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"05-06-1980","yearOfBirth":1980,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"blonde","wand":{"wood":"hawthorn","core":"unicorn tail-hair","length":10},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Tom Felton","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/draco.jpg"},{"name":"Severus Snape","alternate_names":["Half-Blood Prince"],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"09-01-1960","yearOfBirth":1960,"wizard":true,"ancestry":"half-blood","eyeColour":"black","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"doe","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Alan Rickman","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/snape.jpg"},{"name":"Bellatrix Lestrange","alternate_names":["Bella"],"species":"human","gender":"female","house":"Slytherin","dateOfBirth":"","yearOfBirth":1951,"wizard":true,"ancestry":"pure-blood","eyeColour":"brown","hairColour":"black","wand":{"wood":"walnut","core":"dragon heartstring","length":12.75},"patronus":"","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Helena Bonham Carter","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/bellatrix.jpg"},{"name":"Lord Voldemort","alternate_names":["Tom Marvolo Riddle"],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"31-12-1926","yearOfBirth":1926,"wizard":true,"ancestry":"half-blood","eyeColour":"red","hairColour":"bald","wand":{"wood":"yew","core":"phoenix feather","length":13.5},"patronus":"","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Ralph Fiennes","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/voldemort.jpg"},{"name":"Horace Slughorn","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"pure-blood","eyeColour":"green","hairColour":"blonde","wand":{"wood":"cedar","core":"dragon heartstring","length":10.25},"patronus":"","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Jim Broadbent","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/slughorn.JPG"},{"name":"Dolores Umbridge","alternate_names":[],"species":"human","gender":"female","house":"Slytherin","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"half-blood","eyeColour":"brown","hairColour":"grey","wand":{"wood":"birch","core":"dragon heartstring","length":8},"patronus":"persian cat","hogwartsStudent":false,"hogwartsStaff":true,"actor":"Imelda Staunton","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/umbridge.jpg"},{"name":"Lucius Malfoy","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"","yearOfBirth":1954,"wizard":true,"ancestry":"pure-blood","eyeColour":"grey","hairColour":"blonde","wand":{"wood":"elm","core":"dragon heartstring","length":18},"patronus":"","hogwartsStudent":false,"hogwartsStaff":false,"actor":"Jason Isaacs","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/lucius.jpg"},{"name":"Vincent Crabbe","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"pure-blood","eyeColour":"black","hairColour":"black","wand":{"wood":"","core":"","length":null},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Jamie Waylett","alternate_actors":[],"alive":false,"image":"https://hp-api.herokuapp.com/images/crabbe.jpg"},{"name":"Gregory Goyle","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"pure-blood","eyeColour":"","hairColour":"brown","wand":{"wood":"","core":"","length":null},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Josh Herdman","alternate_actors":[],"alive":true,"image":"https://hp-api.herokuapp.com/images/goyle.jpg"},{"name":"Millicent Bulstrode","alternate_names":[],"species":"human","gender":"female","house":"Slytherin","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"","eyeColour":"","hairColour":"","wand":{"wood":"","core":"","length":null},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Helen Stuart","alternate_actors":[],"alive":true,"image":""},{"name":"Theodore Nott","alternate_names":[],"species":"human","gender":"male","house":"Slytherin","dateOfBirth":"","yearOfBirth":null,"wizard":true,"ancestry":"pure-blood","eyeColour":"","hairColour":"","wand":{"wood":"","core":"","length":null},"patronus":"","hogwartsStudent":true,"hogwartsStaff":false,"actor":"","alternate_actors":[],"alive":true,"image":""}]""";
  group("Pruebas con el repositorio offline de persoanjes", () {
    test("Puedo obtener los personajes", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado = repositorio.obtenerTodosLosPersonajes(documento);
      expect(resultado.isRight(), true);
    });
    test("Acceder a la informacion de cada uno", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado = repositorio.obtenerTodosLosPersonajes(documento);
      resultado.match((l) => null, (r) {
        expect(r[0].nombre, equals("Harry Potter"));
      });
    });
    test("Hay en total 17 personajes", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado = repositorio.obtenerTodosLosPersonajes(documento);
      resultado.match((l) => null, (r) {
        expect(r.length, equals(17));
      });
    });
  });

  group("Pruebas repositorio para estudiantes", () {
    test("Hay en total 5 estudiantes en Gryffindor", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado =
          repositorio.obtenerEstudiantesDeCasa(documentoGryffindor);
      resultado.match((l) => null, (r) {
        expect(r.length, equals(5));
      });
    });
    test("Hay un total de 5 estudiantes en Slytherin", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado =
          repositorio.obtenerEstudiantesDeCasa(documentoSlytherin);
      resultado.match((l) => null, (r) {
        expect(r.length, equals(5));
      });
    });
  });

  group("Pruebas repositorio para staff", () {
    test("Hay en total 3 profesores en Gryffindor", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado = repositorio.obtenerStaffDeCasa(documentoGryffindor);
      resultado.match((l) => null, (r) {
        expect(r.length, equals(3));
      });
    });
    test("Hay un total de 3 profesores en Slytherin", () {
      RepositorioPersonajes repositorio = RepositorioPersonajesOffline();
      final resultado = repositorio.obtenerStaffDeCasa(documentoSlytherin);
      resultado.match((l) => null, (r) {
        expect(r.length, equals(3));
      });
    });
  });
}
