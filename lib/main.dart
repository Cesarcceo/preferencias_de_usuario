import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute:  HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: ( _ ) => HomeScreen(),
        SettingsScreen.routeName: ( _ ) => SettingsScreen(),
      },
    );
  }
}