import 'package:flutter/material.dart';
import 'views/basic_app.dart';
import 'project1/views/main_project1.dart';


final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const BasicApp(title: 'Simple Flutter App'),
  '/project1': (context) => const MainProject1(),
  // Agrega más rutas según sea necesario
};
