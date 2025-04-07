/*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
*/
import 'dart:io';

void main() {
  print('enter the first numbers');
  double firstNumber = double.parse(stdin.readLineSync()!);
  print('enter the operation');
  String operator = stdin.readLineSync()!;
  print('enter the second numbers');

  double secondNumber = double.parse(stdin.readLineSync()!);

  operation(firstNumber, secondNumber, operator);
}

operation(double firstNumber, double secondNumber, String operator) {
  if (operator == '+') {
    print(firstNumber + secondNumber);
  } else if (operator == '-') {
    print(firstNumber - secondNumber);
  } else if (operator == '*') {
    print(firstNumber * secondNumber);
  } else {
    if (secondNumber == 0) {
      print('invalid operation');
    } else {
      print(firstNumber / secondNumber);
    }
  }
}
