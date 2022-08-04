import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_api/model/weather_model.dart';

class WeatherApi{
  Future<Weather>? getCurrentWeather(String? location) async {
    var  endpoint = "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=a1fe5efbeab7d4636389ffaa21f6aeab&units=metric";
    var response = await http.get(Uri.parse(endpoint));
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).city);
    return Weather.fromJson(body);
  }
}