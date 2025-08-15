# 🌦 Weather App (Flutter + GetX)

A modern weather application built with **Flutter** and **GetX** for state management.  
Displays real-time weather information with a clean, modular architecture.

---

## 📂 Project Structure

lib/
├── main.dart # App entry point
├── app/
│ ├── modules/ # Feature-based modules
│ │ ├── home/ # Home module
│ │ │ ├── controllers/ # GetX Controllers
│ │ │ │ └── home_controller.dart
│ │ │ ├── models/ # Data models
│ │ │ │ └── weather_model.dart
│ │ │ ├── views/ # UI screens
│ │ │ │ └── home_view.dart
│ │ │ ├── services/ # API / Data services
│ │ │ │ └── weather_service.dart
│ │ │ └── bindings/ # Dependency injection
│ │ │ └── home_binding.dart
│ │ 
│ ├── routes/ # Navigation setup
│ │ ├── app_pages.dart
│ │ └── app_routes.dart


---

## 🚀 Features

- 🌍 Fetches live weather data via API
- 📱 Responsive UI
- ⚡ Fast state management with **GetX**
- 🔗 Centralized navigation using named routes
- 🧩 Modular architecture for scalability

---

## 🛠️ Tech Stack

- **Framework:** Flutter (Dart)
- **State Management:** GetX
- **API Calls:** `http` package (or Dio if implemented)
- **Architecture:** Modular + MVVM-ish

---

## 📦 Installation

```bash
# Clone the repo
git clone https://github.com/Dyy-Coding/weather-app.git

# Navigate to the project
cd weather-app

# Get dependencies
flutter pub get

▶️ Running the App
flutter run

⚙️ Configuration

Get a free weather API key from OpenWeatherMap

Create a .env file (or add in constants file)

const String WEATHER_API_KEY = "YOUR_API_KEY";


Update the API key in weather_service.


