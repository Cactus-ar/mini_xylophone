import 'package:audioplayers/audioplayers.dart';
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
        child: XyloPhone(),
      ),
    );
  }
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        XyloKey(1, Colors.red),
        XyloKey(2, Colors.orange),
        XyloKey(3, Colors.yellow),
        XyloKey(4, Colors.lime),
        XyloKey(5, Colors.green),
        XyloKey(6, Colors.cyan),
        XyloKey(7, Colors.blue),
      ],
    );
  }
}

class XyloKey extends StatelessWidget {
  const XyloKey(this.nota, this.color, {super.key});

final int nota;
final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //AudioCache.instance = AudioCache(prefix: '');
        final player = AudioPlayer();
        player.play(AssetSource('audio/note$nota.wav'));
      },
      child: SizedBox(
        width: 250.0,
        height: 57.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
