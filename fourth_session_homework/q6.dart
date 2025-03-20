/*
6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.
*/
void main() {
  Person yousef = Person(age: 22, name: 'yousef');
  yousef.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent = false;
  Person({required this.age, required this.name});
  displayInfo() {
    print('Name:$name');
    print('age: $age');
    print('is he a student? : $isStudent');
  }
}
