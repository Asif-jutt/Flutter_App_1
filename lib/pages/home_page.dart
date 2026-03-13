import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var name = "Asif Hussain";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asif Hussain from Narowal",style:TextStyle(
        fontSize: 30,
        color: Colors.orange,
        background: Paint(),
        fontWeight: FontWeight.bold,
      ),)),
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
          ],
        ),
      ),
    );
  }
}
