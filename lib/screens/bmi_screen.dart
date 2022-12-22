// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/buttom_menu.dart';
import 'package:flutter_app/screens/menu_page.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  final TextEditingController txtHeight = TextEditingController();
  final TextEditingController txtWeight = TextEditingController();
  final double fontSize = 18;
  String result = "";
  bool isMetric = true;
  bool isImperial = false;
  double? height;
  double? weight;
  late List<bool> isSelected;
  String heightMessage = "";
  String weightMessage = "";
  @override
  void initState() {
    isSelected = [isMetric, isImperial];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    heightMessage =
        'please enter your height in ' + ((isMetric) ? 'meter' : 'inches');

    weightMessage =
        'please enter your weight in ' + ((isMetric) ? 'kilos' : 'pounds');
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      drawer: const Menu(),
      bottomNavigationBar: const ButtomMenu(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            ToggleButtons(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Metric",
                    style: TextStyle(fontSize: fontSize),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Imperial",
                    style: TextStyle(fontSize: fontSize),
                  ),
                ),
              ],
              isSelected: isSelected,
              onPressed: toggleMeasure,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: txtHeight,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: heightMessage,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: txtWeight,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: weightMessage,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: findBmi,
                child: Text(
                  "Calculate BMI",
                  style: TextStyle(fontSize: fontSize),
                )),
            SizedBox(height: 20),
            Text(result),
          ],
        ),
      ),
    );
  }

  void findBmi() {
    double bmi = 0;
    double height = double.tryParse(txtHeight.text) ?? 0;
    double weight = double.tryParse(txtWeight.text) ?? 0;
    if (isMetric) {
      bmi = weight / (height * height);
    } else {
      bmi = weight * 730 / (height * height);
    }
    setState(() {
      print("btton click");
      result = "your BMI is ${bmi.toStringAsFixed(2)}";
    });
  }

  void toggleMeasure(value) {
    if (value == 0) {
      isMetric = true;
      isImperial = false;
    } else {
      isMetric = false;
      isImperial = true;
    }
    setState(() {
      isSelected = [isMetric, isImperial];
    });
  }
}
