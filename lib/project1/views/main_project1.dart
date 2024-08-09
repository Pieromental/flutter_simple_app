import 'package:flutter/material.dart';

class MainProject1 extends StatelessWidget {
  const MainProject1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyecto 1'),
      ),
      body: const Center(
        child: Text(
          'Contenido del Proyecto 1',
        ),
      ),
    );
  }
}
