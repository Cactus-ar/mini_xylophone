import 'package:flutter/material.dart';


class GameAbout extends StatelessWidget {
  const GameAbout({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('Mini Xilófono V0.1a'),
                ),
                Text('Junio 2024'),
              ],
            )
          ],
        ),
      ),
    );
  }
}