/*
Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
*/
import 'dart:io';

void main() {
  print('enter the temperature');
  double temperature = double.parse(stdin.readLineSync()!);
  print('enter the temperature unit you want to convert to');
  String unit = stdin.readLineSync()!;
  temperatureConvert(temperature, unit);
}

temperatureConvert(double temperature, String unit) {
  if (unit == 'c') {
    print(temperature - 273);
  } else if (unit == 'c') {
    print(temperature + 273);
  }
}
