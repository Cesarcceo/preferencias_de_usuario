import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/share_preferences/preferences.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tema Oscuro: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Genero ${Preferences.gener}'),
          const Divider(),
          Text('Nombre de Usuario: ${Preferences.name}'),
          const Divider(),
        ],
      )
   );
  }
}