import 'package:flutter/material.dart';


class SettingsScreen extends StatelessWidget {

  static const String routeName = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}