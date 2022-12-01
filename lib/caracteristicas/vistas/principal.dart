import 'package:flutter/material.dart';

class VistaPrincipal extends StatelessWidget {
  const VistaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API Harry Potter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text("Personajes de Harry Potter",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {},
                child: const Text("Hechizos",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Estudiantes",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(onPressed: () {}, child: const Text("Gryffindor")),
                  TextButton(onPressed: () {}, child: const Text("Slytherin")),
                  TextButton(onPressed: () {}, child: const Text("Hafflepuff")),
                  TextButton(onPressed: () {}, child: const Text("Ravenclaw")),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Empleados",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(onPressed: () {}, child: const Text("Gryffindor")),
                  TextButton(onPressed: () {}, child: const Text("Slytherin")),
                  TextButton(onPressed: () {}, child: const Text("Hafflepuff")),
                  TextButton(onPressed: () {}, child: const Text("Ravenclaw")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
