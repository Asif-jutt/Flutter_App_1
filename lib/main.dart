import "package:flutter/material.dart";
import 'package:flutter_week3/pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/homepractice.dart';
import 'pages/homepractice.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/home": (context) => Homepractic(),
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/log": (context) => ObscuredTextFieldSample(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
