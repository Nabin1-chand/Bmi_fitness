import 'dart:convert';

import 'package:flutter_app/data/weather.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  var url =
      "https://api.openweathermap.org/data/2.5/weather?q=mahendranagar&appid=7383de17a177910fd3587a53494cd22e";

  final String authority = "api.openweathermap.org";

  final String path = "data/2.5/weather";
  final String apikey = "7383de17a177910fd3587a53494cd22e";

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {"q": location, "appId": apikey};
    Uri uri = Uri.https(authority, path, parameters);
    print(uri);
    http.Response result = await http.get(uri);
    // var result = await http.get(Uri.parse(url));
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.formjson(data);

    return weather;

    // try {
    //   print("success");
    //   print(result.statusCode);
    // } catch (e) {
    //   print(throw Exception(e));
    // }
  }
}
