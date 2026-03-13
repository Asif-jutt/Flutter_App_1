import "package:flutter/material.dart";
import 'pages/home_page.dart';
import 'pages/homepractice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter App", 
    themeMode: ThemeMode.dark,
    theme: ThemeData(primarySwatch: Colors.purple),
    darkTheme: ThemeData(brightness: Brightness.dark),
    initialRoute: "/home",
    routes: {
      "/home":(context)=>Homepractic(),
      "/":(context)=>HomePage(),
    },
    );
  }
}
