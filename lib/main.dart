import 'package:flutter/material.dart';
import 'package:maeaqui/screens/welcome_screen.dart';
void main() {
  runApp(const MaeAquiApp());
}

class MaeAquiApp extends StatelessWidget {
  const MaeAquiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MãeAqui',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}