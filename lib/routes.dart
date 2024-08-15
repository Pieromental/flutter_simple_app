import 'package:flutter/material.dart';
import 'screens/basic_app.dart';
import 'counter_project/screens/counter.dart';
import 'chat_project/screens/chat_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const BasicApp(title: 'Simple Flutter App'),
  '/counter_project': (context) => const CounterScreen(),
  '/chat_project': (context) => const ChatScreen(),
  // Agrega más rutas según sea necesario
};
