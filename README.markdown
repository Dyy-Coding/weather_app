# 🌦 Weather App (Flutter + GetX)

A modern, lightweight weather application built with **Flutter** and **GetX** for efficient state management. This app fetches real-time weather data and presents it through a clean, responsive, and user-friendly interface. The project follows a modular, scalable architecture to ensure maintainability and extensibility.

---

## 📂 Project Structure

The project is organized using a feature-based modular architecture for clarity and scalability:

- **lib/**: Root directory for the application source code
  - **main.dart**: Application entry point
  - **app/**: Core application directory
    - **modules/**: Feature-based modules
      - **home/**: Home module
        - **controllers/**: GetX controllers for state management
          - **home_controller.dart**: Controller for the home module
        - **models/**: Data models
          - **weather_model.dart**: Data model for weather-related data
        - **views/**: UI screens
          - **home_view.dart**: UI for the home screen
        - **services/**: API and data services
          - **weather_service.dart**: Service for fetching weather data
        - **bindings/**: Dependency injection setup
          - **home_binding.dart**: Binding for dependency injection in the home module
    - **routes/**: Navigation setup
      - **app_pages.dart**: Defines application pages and their navigation
      - **app_routes.dart**: Defines route names and paths

---

## 🚀 Features

- 🌍 **Real-time Weather Data**: Fetches live weather information using a third-party API.
- 📱 **Responsive UI**: Adapts seamlessly to different screen sizes and orientations.
- ⚡ **Efficient State Management**: Leverages **GetX** for lightweight and fast state management.
- 🔗 **Centralized Navigation**: Uses named routes for streamlined navigation.
- 🧩 **Modular Architecture**: Organized by feature for scalability and maintainability.

---

## 🛠️ Tech Stack

- **Framework**: Flutter (Dart)
- **State Management**: GetX
- **API Calls**: `http` package (or Dio, if implemented)
- **Architecture**: Modular + MVVM-inspired
- **Environment Management**: `.env` file for API keys and configuration
- **Dependency Injection**: GetX bindings

---

## 📦 Installation

Follow these steps to set up and run the project locally:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Dyy-Coding/weather-app.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd weather-app
   ```

3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the App**:
   ```bash
   flutter run
   ```

---

## ⚙️ Configuration

To fetch weather data, you need an API key from [OpenWeatherMap](https://openweathermap.org/).

1. **Obtain an API Key**:
   - Sign up for a free account on [OpenWeatherMap](https://openweathermap.org/).
   - Generate an API key from your account dashboard.

2. **Set Up the API Key**:
   - Create a `.env` file in the project root or update the constants file.
   - Add the following line:
     ```dart
     const String WEATHER_API_KEY = "YOUR_API_KEY";
     ```
   - Update the `weather_service.dart` file to use this API key.


---

## 🧑‍💻 Development

- **Code Style**: Follows Dart's recommended coding conventions.
- **Testing**: Unit and widget tests can be added in the `test/` directory.
- **CI/CD**: Configure CI/CD pipelines (e.g., GitHub Actions) for automated testing and deployment.

---

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 📬 Contact

For questions or feedback, reach out via [GitHub Issues](https://github.com/Dyy-Coding/weather-app/issues) or contact the maintainer at [chandyneat9999@gmail.com](mailto:chandyneat9999@gmail.com).