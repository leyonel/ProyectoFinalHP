import 'package:proyecto_hp_final/caracteristicas/verificacion/repositorio_hechizos.dart';
import 'package:test/test.dart';

void main() {
  String documento =
      """[{"name":"Aberto","description":"Opens locked doors"},{"name":"Accio","description":"Summons objects"},{"name":"Aguamenti","description":"Summons water"},{"name":"Alohomora","description":"Unlocks objects"},{"name":"Anapneo","description":"Clears someone's airway"},{"name":"Aparecium","description":"Reveals secret written messages"},{"name":"Apparate","description":"A non-verbal transportation spell that allows a witch or wizard to instantly travel on the spot and appear at another location (disapparate is the opposite)"},{"name":"Ascendio","description":"Propells someone into the air"},{"name":"Avada Kedavra","description":"Also known as The Killing Curse, the most evil spell in the Wizarding World; one of three Unforgivable Curses; Harry Potter is the only known witch or wizard to survive it"},{"name":"Avis","description":"Conjures a small flock of birds"},{"name":"Bat","description":"Bogey Hex - Turns the target's boogers into bats"},{"name":"Bombardo","description":"Creates an explosion"},{"name":"Brackium Emendo","description":"Heals broken bones"},{"name":"Capacious Extremis","description":"Known as the Extension Charm, it's a complicated spell that can greatly expand or extend the capacity of an object or space without affecting it externally"},{"name":"Confundo","description":"Known as the Confundus Charm, it causes confusion of the target"},{"name":"Conjunctivitis Curse","description":"Affects the eyes and sight of a target"},{"name":"Crinus Muto","description":"Changes hair color and style"},{"name":"Crucio","description":"One of three Unforgivable Curses, it causes unbearable pain in the target"},{"name":"Diffindo","description":"Used to precisely cut an object"},{"name":"Disillusionment Charm","description":"Causes the target to take on the appearance of its surroundings"},{"name":"Disapparate","description":"A non-verbal transportation spell that allows a witch or wizard to instantly travel on the spot and leave for another location (apparate is the opposite)"},{"name":"Engorgio","description":"Causes rapid growth in the targeted object"},{"name":"Episkey","description":"Heals minor injuries"},{"name":"Expecto patronum","description":"The Patronus Charm is a powerful projection of hope and happiness that drives away Dementors; a corpeal Patronus takes the the respective animal form of the caster, while a non-corpeal appears as a wisp of light; at 13, Harry Potter was the youngest known witch or wizard to prouduce a corpeal Patronus"},{"name":"Erecto","description":"Allows a witch or wizard to build a structure, like a tent"},{"name":"Evanesco","description":"Vanishes objects"},{"name":"Expelliarmus","description":"Forces an opponent to drop whatever's in their possession"},{"name":"Ferula","description":"A healing charm that conjures wraps and bandages for wounds"},{"name":"Fiendfyre Curse","description":"Conjures destructive, enormous enchanted flames"},{"name":"Finite Incantatem","description":"A general counter-spell that's used to reverse or counter already cast charms"},{"name":"Furnunculus Curse","description":"A jinx that causes a breakout of boils or pimples"},{"name":"Geminio","description":"Duplicates objects"},{"name":"Glisseo","description":"Transforms a staircase into a slide"},{"name":"Homenum Revelio","description":"Reveals the presence of another person"},{"name":"Homonculus Charm","description":"Detects anyone's true identity and location on a piece of parchment; used to create the Marauder's Map"},{"name":"Immobulus","description":"Immobilises living targets"}]""";
  group("Pruebas para hechizos", () {
    test("Los hechizos no tienen errores", () {
      RepositorioHechizos repositorio = RepositorioHechizosPruebas();
      final respuesta = repositorio.obtenerHechizos(documento);
      expect(respuesta.isRight(), true);
    });
    test("Hay 36 hechizos", () {
      RepositorioHechizos repositorio = RepositorioHechizosPruebas();
      final respuesta = repositorio.obtenerHechizos(documento);
      respuesta.match((l) => null, (r) {
        expect(r.length, equals(36));
      });
    });
    test("Acceder a la informacion de cada uno", () {
      RepositorioHechizos repositorio = RepositorioHechizosPruebas();
      final respuesta = repositorio.obtenerHechizos(documento);
      respuesta.match((l) => null, (r) {
        expect(r[0].nombre, equals("Aberto"));
      });
    });
  });
}
