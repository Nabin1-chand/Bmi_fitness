import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/menu_page.dart';

class BMIScreen extends StatelessWidget {
  const BMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi screen"),
      ),
      drawer: Menu(),
    );
  }
}
