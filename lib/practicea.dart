import "package:flutter/material.dart";

class PracticeA extends StatelessWidget {
  const PracticeA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice A'),
        backgroundColor: const Color.fromARGB(255, 204, 73, 64),
        shadowColor: const Color.fromARGB(255, 189, 148, 148),
      ),
      body: Center(child: Text('Asif Hussain')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menue')),
            ListTile(title: Text('Home'), leading: Icon(Icons.home)),
            ListTile(title: Text('Profile'), leading: Icon(Icons.person)),
            ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
            ListTile(title: Text('Logout'), leading: Icon(Icons.logout)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
        ],
      ),
    );
  }
}
