import 'package:flutter/material.dart';
import 'package:immersive_world/screens/login.screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Immersive World',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,),
      home: LoginScreen(),
    );
  } //Widget Build
} //StateLessWidget


