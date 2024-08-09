import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp( MaterialApp(
    title: 'Saludos Terricola',
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: appRoutes,  // Aquí se define la navegación con las rutas
  ));
}

