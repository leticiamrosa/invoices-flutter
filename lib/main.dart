import 'package:flutter/material.dart';

void main() {
  runApp(const Faturas());
}

class Faturas extends StatelessWidget {
  const Faturas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Faturas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sistema de Faturas'),
        ),
        body: const Center(
          child: Text('Olá Mundo!'),
        ),
      ),
    );
  }
}
