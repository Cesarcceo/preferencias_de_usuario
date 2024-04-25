import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';


class SettingsScreen extends StatelessWidget {

  static const String routeName = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}