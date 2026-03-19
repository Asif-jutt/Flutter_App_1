import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Menu")),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(color: Colors.lightBlueAccent),
            ),
          ),
          ListTile(
            title: Text("About", style: TextStyle(color: Colors.blue)),
          ),
          ListTile(
            title: Text("Contact", style: TextStyle(color: Colors.blue)),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
