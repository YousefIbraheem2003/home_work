/*
Class Creation and Dot Operator Usage:
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods.
*/
void main() {
  Human yousef = Human(color: 'white', numberOfFingers: 10, numberOfLegs: 2);
  print(yousef.color);
  print(yousef.numberOfFingers);
  print(yousef.numberOfLegs);
  print(yousef.humanIsWalkig());
  print(yousef.humanIsStudying());
}

class Human {
  final String color;
  final int numberOfFingers;
  final int numberOfLegs;
  Human(
      {required this.color,
      required this.numberOfFingers,
      required this.numberOfLegs});
  humanIsWalkig() {
    print('human is walking');
  }

  humanIsStudying() {
    print('human is studying');
  }
}
