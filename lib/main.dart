import 'package:basic_flutter_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    title: 'Saludos Terricola',
    initialRoute: '/',
    theme: AppTheme(selectedColor: 1).theme(),
    debugShowCheckedModeBanner: false,
    routes: appRoutes, // Aquí se define la navegación con las rutas
  ));
}
