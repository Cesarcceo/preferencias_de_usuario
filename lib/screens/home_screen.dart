import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}