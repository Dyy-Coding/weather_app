import 'package:get/get.dart';
import '../models/weather_model.dart';
import '../services/weather_service.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var weather = Rxn<Weather>();
  var forecast = <Forecast>[].obs;

  final WeatherService _service = WeatherService();

  void getWeather(String city) async {
    try {
      isLoading.value = true;
      weather.value = await _service.fetchCurrentWeather(city);
      forecast.value = await _service.fetchForecast(city);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
