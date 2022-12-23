class Weather {
  String name = "";
  String description = "";
  double temperature = 0;
  double perceived = 0;
  int humidity = 0;
  int pressure = 0;

  Weather(this.name, this.description, this.temperature, this.perceived,
      this.humidity, this.pressure);

  Weather.formjson(Map<String, dynamic> weatherMap) {
    name = weatherMap['name'];
    temperature = (weatherMap['main']['temp'] - 273.15) ?? 0;

    perceived = (weatherMap['main']['feels_like'] - 273.15) ?? 0;
    humidity = (weatherMap['main']['humidity']) ?? 0;
    pressure = (weatherMap['main']['pressure']) ?? 0;
    description = weatherMap['weather'][0]['main'] ?? 0;
  }
}
