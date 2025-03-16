/*
Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name
*/
import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> weatherData = {};

  while (true) {
    print("\n1 View Weather\n2 Add City\n3 Remove City\n4 Exit");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      viewWeather(weatherData);
    } else if (choice == '2') {
      addCity(weatherData);
    } else if (choice == '3') {
      removeCity(weatherData);
    } else if (choice == '4') {
      break;
    }
  }
}

void viewWeather(Map<String, Map<String, dynamic>> data) {
  String city = stdin.readLineSync()!;
  print(data[city]);
}

void addCity(Map<String, Map<String, dynamic>> data) {
  String city = stdin.readLineSync()!;
  int temp = int.parse(stdin.readLineSync()!);
  int humidity = int.parse(stdin.readLineSync()!);
  String condition = stdin.readLineSync()!;
  data[city] = {
    "temperature": temp,
    "humidity": humidity,
    "condition": condition
  };
}

void removeCity(Map<String, Map<String, dynamic>> data) {
  String city = stdin.readLineSync()!;
  data.remove(city);
}
