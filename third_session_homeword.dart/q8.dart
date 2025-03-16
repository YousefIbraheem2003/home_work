/*
8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result.
*/
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  if (number < 100 || number > 50) {
    print('the number is in the range');
  } else {
    print('out of the range');
  }
}
