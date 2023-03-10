import 'package:agente_amc/home.dart';
import 'package:agente_amc/login_page.dart';
import 'package:agente_amc/myhomepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const Home(),
      },
    );
  }
}
