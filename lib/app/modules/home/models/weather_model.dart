// This file defines the data models for the weather app, which help structure
// the weather and forecast data received from an API.

/// The Weather class represents current weather data for a specific city.
/// It holds information like the city name, temperature, and weather description.
class Weather {
  // The name of the city (e.g., "New York").
  final String city;
  // The current temperature in Celsius (stored as a double for decimal values).
  final double temperature;
  // A brief description of the weather (e.g., "clear sky" or "light rain").
  final String description;

  /// Constructor for creating a Weather object.
  /// All properties (city, temperature, description) are required to ensure
  /// the object is fully initialized with valid data.
  Weather({
    required this.city,
    required this.temperature,
    required this.description,
  });

  /// Factory method to create a Weather object from JSON data.
  /// This is used to convert raw API data (in JSON format) into a Weather object.
  /// The JSON structure is expected to match the format provided by the weather API.
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      // Extracts the city name from the 'name' key in the JSON.
      city: json['name'],
      // Extracts the temperature from the 'main' object and converts it to a double.
      temperature: json['main']['temp'].toDouble(),
      // Extracts the weather description from the first item in the 'weather' list.
      description: json['weather'][0]['description'],
    );
  }
}

/// The Forecast class represents a single forecast entry for a specific time.
/// It holds the date/time and temperature for a future weather prediction.
class Forecast {
  // The date and time of the forecast (e.g., "2025-08-16 12:00:00").
  final String dateTime;
  // The forecasted temperature in Celsius (stored as a double).
  final double temperature;

  /// Constructor for creating a Forecast object.
  /// Both dateTime and temperature are required to ensure valid data.
  Forecast({required this.dateTime, required this.temperature});

  /// Factory method to create a Forecast object from JSON data.
  /// This converts API data (in JSON format) into a Forecast object.
  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      // Extracts the date and time from the 'dt_txt' key in the JSON.
      dateTime: json['dt_txt'],
      // Extracts the temperature from the 'main' object and converts it to a double.
      temperature: json['main']['temp'].toDouble(),
    );
  }
}