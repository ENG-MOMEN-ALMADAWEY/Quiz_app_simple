import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_pages.dart';

void main() {
  runApp(Quiz_app());
}

class Quiz_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}
