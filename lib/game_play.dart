import 'package:flutter/material.dart';

class GameEstado extends StatelessWidget {
  const GameEstado({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(titulo),
      ),
      body: const Center(
        child: MesaDeJuego(),
      ),
    );
  }
}

class MesaDeJuego extends StatelessWidget {
  const MesaDeJuego({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
      ],
    );
  }
}

