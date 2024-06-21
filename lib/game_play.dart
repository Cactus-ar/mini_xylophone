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
        XyloKey(),
      ],
    );
  }
}

class XyloKey extends StatefulWidget {
  const XyloKey({super.key});

  @override
  State<StatefulWidget> createState() => _XyloKey();

}

class _XyloKey extends State<XyloKey>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/note1.wav'));
      },
      child: SizedBox(
        width: 250.0,
        height: 60.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

