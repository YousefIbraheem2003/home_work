/*
Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).
*/
import 'dart:io';

void main() {
  print('enter the first and second number');
  double firstNum = double.parse(stdin.readLineSync()!);
  double secondNum = double.parse(stdin.readLineSync()!);
  double? result;
  print('\n+\n-\n*\n/');
  String operand = stdin.readLineSync()!;
  switch (operand) {
    case '+':
      result = add(firstNum, secondNum);
      break;
    case '-':
      result = sub(firstNum, secondNum);
      break;
    case '*':
      result = multiply(firstNum, secondNum);
      break;
    case '/':
      result = divide(firstNum, secondNum);
      break;
  }
  print(result);
}

double add(double firstNum, double secondNum) {
  return firstNum + secondNum;
}

double sub(double firstNum, double secondNum) {
  return firstNum - secondNum;
}

double multiply(double firstNum, double secondNum) {
  return firstNum * secondNum;
}

double divide(double firstNum, double secondNum) {
  return firstNum / secondNum;
}
