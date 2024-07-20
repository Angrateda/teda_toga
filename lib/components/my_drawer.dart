import 'package:flutter/material.dart';
import 'package:teda_toga/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.school_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home_rounded,
            onTap: () => Navigator.pop(context),
          ),

          // settings list tile
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings_rounded,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          // logout list tile
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout_rounded,
            onTap: () {},
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
