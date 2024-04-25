import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const _DrawHeader(),

          ListTile(
            leading: const Icon(Icons.pages_outlined) ,
            title: const Text('Home') ,
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),

          ListTile(
            leading: const Icon(Icons.people_outline) ,
            title: const Text('people') ,
            onTap: () {
              
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined) ,
            title: const Text('Settings') ,
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}

class _DrawHeader extends StatelessWidget {
  const _DrawHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.zero,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/menu-img.jpg'),
            fit: BoxFit.cover
          )
        ),
      )
    );
  }
}