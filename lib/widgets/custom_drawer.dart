import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_or_register.dart';
import 'package:flutter_application_1/screens/settings_screen.dart';
import 'package:flutter_application_1/widgets/custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //* app logo,
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_open_rounded,
                size: 80, color: Theme.of(context).colorScheme.inversePrimary),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          //* Host list tile
          CustomDrawerTile(
              text: "Home",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),

          //* Settings list tile
          CustomDrawerTile(
              text: "Settings",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);

                //* push to settings screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              }),

          const Spacer(), //* To have a flex space

          //* Logout list tile
          CustomDrawerTile(
              text: "Logout",
              icon: Icons.logout_outlined,
              onTap: () {
                //* push to Login screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginOrRegister()));
              }),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
