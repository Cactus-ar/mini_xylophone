import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class GameAbout extends StatelessWidget {
  GameAbout({super.key, required this.title});
  final String title;
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('No es posible abrir el Sitio $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                 Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('Mini Xilófono V0.1a'),
                ),
                const Text('Junio 2024'),
                ElevatedButton(
                  onPressed: _launchUrl,
                  child: const Text('Politicas de Privacidad'),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}