import "package:flutter/material.dart";
import 'homepractice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter demo app", home: const Homepractic());
  }
}
