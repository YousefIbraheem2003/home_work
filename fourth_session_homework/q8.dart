/*
8. Switch Case, Functions & Default Values
Write a function `getDayType(String day)` that:
- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
- Returns "Weekday" otherwise.
- If the input is invalid, return "Invalid day".
Call the function inside `main()` and print the result.
*/
import 'dart:io';

void main() {
  List<String> days = [
    'sunday',
    'monday',
    'tuesday',
    'wednesday',
    'thrusday',
    'friday',
    'saturday'
  ];
  print('enter the day');
  String day = stdin.readLineSync()!;
  getDayType(day, days);
}

getDayType(String day, List<String> days) {
  if (!days.contains(day)) {
    print('invalid');
  }
  switch (day) {
    case 'saturday':
      print('weekend');
      break;
    case 'sunday':
      print('weekend');
    default:
      print('weekday');
  }
}
