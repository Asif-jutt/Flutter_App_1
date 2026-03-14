import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login_pic.png", fit: BoxFit.contain),
          SizedBox(height: (30.0)),
          Text("Wellcome to the System"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 42),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hint: Text("Enter the user name :"),
                    label: Text(("Username :")),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hint: Text("Enter the Password :"),
                    label: Text(("Password :")),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 100, 89, 56),
            ),
            onPressed: () {
              print("Button is clicked");
            },
          ),
        ],
      ),
    );
  }
}
