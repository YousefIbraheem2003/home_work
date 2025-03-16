/*
Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.
*/
import 'dart:io';

void main() {
  List<String> grocceryList = [];
  while (true) {
    print('add or remove or exit');
    String choice = stdin.readLineSync()!;

    print('enter the item');
    String item = stdin.readLineSync()!;
    if (item == '') {
      continue;
    }
    if (choice == 'exit') {
      break;
    } else {
      switch (choice) {
        case 'add':
          addItems(item: item, items: grocceryList);
        case 'remove':
          if (grocceryList.isEmpty) {
            print('list is empty');
            continue;
          } else if (grocceryList.contains(item)) {
            removeItems(item: item, items: grocceryList);
          } else {
            print('the item is not found');
            continue;
          }
      }
      print(grocceryList);
    }
  }
}

List<String> addItems({required String item, required List<String> items}) {
  items.add(item);
  return items;
}

List<String> removeItems({required String item, required List<String> items}) {
  String item = stdin.readLineSync()!;
  items.remove(item);
  return items;
}
