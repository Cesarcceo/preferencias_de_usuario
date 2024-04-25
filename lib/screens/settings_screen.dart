import 'package:flutter/material.dart';

import 'package:preferencias_de_usuario/share_preferences/preferences.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {

  static const String routeName = 'Settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes', style: TextStyle(fontSize:45, fontWeight: FontWeight.w300 )),
              const Divider(),
              SwitchListTile(
                value: Preferences.isDarkmode, 
                title: const Text('Modo Oscuro'),
                onChanged: (value) {
                  Preferences.isDarkmode=value;
                  setState(() {});
                }
              ),
              const Divider(),
              RadioListTile(
                value: 1, 
                groupValue: Preferences.gener, 
                title: const Text('Masculino'),
                onChanged: (value){
                  Preferences.gener=value??1;
                  setState(() {});
                },
              ),

              const Divider(),
              RadioListTile(
                value: 2, 
                groupValue: Preferences.gener, 
                title: const Text('Femenino'),
                onChanged: (value){
                  Preferences.gener=value??2;
                  setState(() {});
                },
              ),

              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: (value) {
                    Preferences.name=value;
                    setState(() {});
                  },
                  decoration: const  InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del Usuario'
                  ),
                ),
              )

            ],
          ),
        ),
      )
   );
  }
}