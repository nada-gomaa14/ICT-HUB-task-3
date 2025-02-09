import 'package:flutter/material.dart';
import 'package:task3/login_screen.dart';


void main() {
  runApp(Task3());
}

class Task3 extends StatelessWidget{
  const Task3({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}