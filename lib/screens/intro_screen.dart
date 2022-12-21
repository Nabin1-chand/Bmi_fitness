import 'package:flutter/material.dart';
import 'package:flutter_app/screens/layout.dart';
import 'package:flutter_app/screens/menu_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intro screen"),
      ),
      drawer: const Menu(),
      body: const MyApp(),
    );
  }
}
