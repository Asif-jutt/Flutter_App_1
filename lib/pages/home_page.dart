import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var name = "Asif Hussain";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Store",
          style: TextStyle(
            fontSize: 30,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              // Navigate to login page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ObscuredTextFieldSample(),
                ),
              );
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
            ),
          ),
          SizedBox(width: 10), // spacing
        ],
      ),
      body: Center(
        child: Text("This is the home page", style: TextStyle(fontSize: 15)),
      ),
      drawer: Drawer(
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}
