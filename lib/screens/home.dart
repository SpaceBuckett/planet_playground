import 'package:flutter/material.dart';
import 'package:objects/core/data/planets.dart';
import 'package:objects/core/model/planet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Our Solar System",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: planets.length,
        itemBuilder: (context, index) {
          return PlanetCard(
            planet: planets[index],
          );
        },
      ),
    );
  }
}

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    required this.planet,
    super.key,
  });

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.sunny),
      title: Text('${planet.name}'),
      subtitle: Text('${planet.description}'),
    );
  }
}
