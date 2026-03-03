import 'package:flutter/material.dart';
import 'package:myapp/widgets/p1.dart';
import 'package:myapp/widgets/p2.dart';
import 'package:myapp/widgets/p3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Médica',
      theme: ThemeData(
        primaryColor: const Color(0xFFD32F2F), // Rojo médico
        scaffoldBackgroundColor: Colors.white,
      ),
      // Rutas nombradas como solicitaste
      initialRoute: '/Inicio',
      routes: {
        '/Inicio': (context) => const PantallaInicio(),
        '/pantalla2': (context) => const PantallaAgendaEspecialidad(),
        '/pantalla3': (context) => const PantallaCalendario(),
      },
    );
  }
}