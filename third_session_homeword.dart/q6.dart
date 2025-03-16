/*
Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair.
*/
import 'dart:io';

void main() {
  Map<String, StudentInfo> studentInfoMap = {};
  while (true) {
    print('enter your name');
    String name = stdin.readLineSync()!;
    print('add,update,remove');
    String choice = stdin.readLineSync()!;
    print('welcome $name ');
    double age;
    double grades;

    switch (choice) {
      case 'add':
        print('enter your age and your grades');
        age = double.parse(stdin.readLineSync()!);
        grades = double.parse(stdin.readLineSync()!);
        add(age: age, grades: grades, name: name, students: studentInfoMap);
      case 'remove':
        remove(name: name, students: studentInfoMap);
      case 'update':
        print('enter your new informations');
        age = double.parse(stdin.readLineSync()!);
        grades = double.parse(stdin.readLineSync()!);
        add(age: age, grades: grades, name: name, students: studentInfoMap);
    }
    print(studentInfoMap);
  }
}

class StudentInfo {
  double age;
  final double grades;
  StudentInfo({
    required this.age,
    required this.grades,
  });
  @override
  String toString() {
    return 'Age: $age, Grades: $grades';
  }
}

Map add(
    {required double age,
    required double grades,
    required String name,
    required Map<String, StudentInfo> students}) {
  StudentInfo student = StudentInfo(age: age, grades: grades);
  students[name] = student;
  return students;
}

Map remove({required String name, required Map<String, StudentInfo> students}) {
  students.remove(name);
  return students;
}
