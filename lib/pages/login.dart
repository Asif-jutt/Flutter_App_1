import "package:flutter/material.dart";
import '../screens/drawer.dart';
import '../screens/bottom_navigation.dart';
class ObscuredTextFieldSample extends StatelessWidget {
  const ObscuredTextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // <-- Add this
        title: Text("Login Page"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Text(
                "Login Form",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(height: (20)),
            SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
