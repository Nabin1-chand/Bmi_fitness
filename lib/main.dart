import 'package:flutter/material.dart';
import 'package:flutter_app/screens/bmi_screen.dart';
import 'package:flutter_app/screens/buttom_menu.dart';
import 'package:flutter_app/screens/intro_screen.dart';
import 'package:flutter_app/screens/layout.dart';
import 'package:flutter_app/screens/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fitness'),
        ),
        drawer: const Menu(),
        body: Layout(),
        bottomNavigationBar: ButtomMenu(),
        // ),
      ),
      // initialRoute: '/',
      routes: {
        '/bmi': (context) => BMIScreen(),
      },
    );
  }
}
