/*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result
*/
import 'dart:io';

void main() {
  Map<String, int> fruitsPrices = {'apple': 5, 'banana': 10};
  print('enter the fruit name');
  String fruitName = stdin.readLineSync()!;
  print(getPrice(fruitName: fruitName, fruitsPrices: fruitsPrices));
}

int getPrice(
    {required String fruitName, required Map<String, int> fruitsPrices}) {
  int? price;
  if (fruitsPrices.containsKey(fruitName)) {
    price = fruitsPrices[fruitName];
  } else {
    price = -1;
  }
  return price!;
}
