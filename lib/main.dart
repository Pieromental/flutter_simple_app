import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Saludos Terricola',
    home: SafeArea(child: BasicApp()),))
  ;
}


class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context){
    return  Material(
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.greenAccent ),
            child: const Row(
              children: [
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.menu),
                    tooltip: 'Botón de navegación',
                ),
                Expanded(child: Text('Simple Flutter App')),
                 IconButton(onPressed: null, icon: Icon(Icons.search))
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                  'Hola Mundo',
                  textDirection: TextDirection.ltr ,),
            ),
          ),
        ],
      ),);
  }
}