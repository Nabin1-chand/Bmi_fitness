import 'package:flutter/material.dart';
import 'package:flutter_app/screens/layout.dart';
import 'package:flutter_app/screens/menu_page.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fitness'),
        ),
        drawer: const Menu(),
        body: const MyApp(),
      ),
    );
  }
}
