import 'dart:math';
import 'package:flutter/material.dart';
import 'game_about.dart';
import 'game_play.dart';
import 'game_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Xylophone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mini Xylophone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class TeclaPreview extends StatefulWidget {
  const TeclaPreview({super.key});

  @override
  State<StatefulWidget> createState() => _TeclaPreview();

}

class _TeclaPreview extends State<TeclaPreview>{
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 150.0,
      height: 30.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
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
    );
  }

}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 150.0,
              height: 200.0,
                child: Column(
                  children: [
                    TeclaPreview(),
                    TeclaPreview(),
                    TeclaPreview(),
                    TeclaPreview(),
                    TeclaPreview(),
                  ],
                ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GameEstado(titulo: 'Game',)),
                    );
                  },
                  label: const Text('Play'),
                  icon: const Icon(Icons.play_circle),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GameSettings(title: 'Settings',)),
                  );
                },
                label: const Text('Settings'),
                icon: const Icon(Icons.settings),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GameAbout(title: 'About',)),
                  );
                },
                label: const Text('About'),
                icon: const Icon(Icons.account_box_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
