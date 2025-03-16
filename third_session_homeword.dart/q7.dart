/*
7. Number Check Program:
Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements
*/
import 'dart:io';

void main() {
  print('enter the number');
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print('it is positive number');
  } else if (number == 0) {
    print('it is zero');
  } else {
    print('negative');
  }
}
