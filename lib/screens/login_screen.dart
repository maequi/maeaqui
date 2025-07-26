import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fazer Login'),
      ),
      body: const Center(
        child: Text(
          'Aqui será a tela de Login.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}