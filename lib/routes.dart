import 'package:flutter/material.dart';
import 'screens/basic_app.dart';
import 'project1/screens/counter.dart';


final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const BasicApp(title: 'Simple Flutter App'),
  '/project1': (context) => const CounterScreen(),
  // Agrega más rutas según sea necesario
};
