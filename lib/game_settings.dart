//import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';


class GameSettings extends StatelessWidget {
  const GameSettings({super.key, required this.title});
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
            Text('Próximamente')
          ],
        ),
      ),
    );
  }
}

/*
class SwitchOscuro extends StatefulWidget {
  const SwitchOscuro({super.key});

  @override
  State<SwitchOscuro> createState() => _SwitchOscuroState();
}

class _SwitchOscuroState extends State<SwitchOscuro> {

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AdaptiveTheme.of(context).mode.isDark,
      onChanged: (value) {
        if (value) {
          AdaptiveTheme.of(context).setDark();
        } else {
          AdaptiveTheme.of(context).setLight();
        }
      },
    );
  }
}
*/

