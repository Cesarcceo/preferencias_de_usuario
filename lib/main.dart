import 'package:flutter/material.dart';

import 'package:preferencias_de_usuario/screens/screens.dart';
import 'package:preferencias_de_usuario/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const MyApp());
}

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