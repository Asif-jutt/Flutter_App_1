import 'package:flutter/material.dart';

class Homepractic extends StatefulWidget {
  const Homepractic({super.key});

  @override
  State<Homepractic> createState() => _HomepracticeState();
}

class _HomepracticeState extends State<Homepractic> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyStore"),
        backgroundColor: Color.fromARGB(34, 45, 54, 67),
        shadowColor: Color.fromRGBO(144, 209, 209, 1),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text(
                "Contact",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
              leading: Icon(Icons.phone),
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: increase,
        child: Center(
          child: Text("Count: $count", style: TextStyle(fontSize: 30)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ],
      ),
    );
  }
}
