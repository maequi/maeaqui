import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Conta'),
      ),
      body: const Center(
        child: Text(
          'Aqui será a tela de Cadastro.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}