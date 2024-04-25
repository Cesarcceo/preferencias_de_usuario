import 'package:flutter/material.dart';
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
      body: const Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}