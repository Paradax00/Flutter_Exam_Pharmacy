import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => {Navigator.pop(context)},
            ),
            title: const Text('Custom Drawer'),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Historique'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Se Déconnecter'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => {Navigator.pushReplacementNamed(context, '/')},
          ),
        ],
      ),
    );
  }
}
