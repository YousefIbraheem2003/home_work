/*
2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result
*/
import 'dart:io';

void main() {
  print('enter your salary and worked years');
  int salary = int.parse(stdin.readLineSync()!);
  int yearsWorked = int.parse(stdin.readLineSync()!);
  print(calculateBonus(salary: salary, yearsWorked: yearsWorked));
}

double calculateBonus({required int salary, required int yearsWorked}) {
  double bonus;
  if (yearsWorked >= 5) {
    bonus = salary * 0.1;
    return bonus;
  } else {
    bonus = salary * 0.05;
  }
  return bonus;
}
