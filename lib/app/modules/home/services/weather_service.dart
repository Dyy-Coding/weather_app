import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_model.dart';

const String apiKey = 'bd1b0d9c907f21d41c7e880436ab3832';

class WeatherService {
  Future<Weather> fetchCurrentWeather(String city) async {
    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load current weather');
    }
  }

  Future<List<Forecast>> fetchForecast(String city) async {
    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$apiKey&units=metric',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List list = data['list'];
      return list.map((e) => Forecast.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load forecast');
    }
  }
}
