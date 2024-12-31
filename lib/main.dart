import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const EducationalApp());
}

class EducationalApp extends StatelessWidget {
  const EducationalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Educational App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
