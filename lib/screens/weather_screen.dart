import 'package:flutter/material.dart';
import 'package:flutter_app/data/http_helper.dart';
import 'package:flutter_app/data/weather.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController txtplace = TextEditingController();
  Weather result = Weather('', '', 0, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
                controller: txtplace,
                decoration: InputDecoration(
                  hintText: "Enter City",
                  suffixIcon:
                      IconButton(onPressed: getData, icon: Icon(Icons.search)),
                )),
          ),
          weatherRow('Place:', result.name),
          weatherRow('Description:', result.description),
          weatherRow(
              'Temperature:', "${result.temperature.toStringAsFixed(2)} "),
          weatherRow('Perceived', result.perceived.toStringAsFixed(2)),
          weatherRow('Pressure', result.pressure.toString()),
          weatherRow('Humidity', result.humidity.toString()),
        ]),
      ),
    );
  }

  Future getData() async {
    HttpHelper helper = HttpHelper();
    result = await helper.getWeather(txtplace.text);
    setState(() {});
  }

  Widget weatherRow(String label, String value) {
    Widget row = Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(label),
            ),
            Expanded(
              flex: 4,
              child: Text(value),
            )
          ],
        ));
    return row;
  }
}
