/*
To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops.
*/
import 'dart:io';

void main() {
  List<Task> toDoList = [];

  while (true) {
    print(
        "\n1 View Tasks\n2 Add Task\n3 Remove Task\n4 Mark as Completed\n5 Exit");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      viewTasks(toDoList);
    } else if (choice == '2') {
      addTask(toDoList);
    } else if (choice == '3') {
      removeTask(toDoList);
    } else if (choice == '4') {
      markCompleted(toDoList);
    } else if (choice == '5') {
      break;
    }
  }
}

class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, [this.isCompleted = false]);

  @override
  String toString() {
    return "Task: $description | Due: $dueDate | Completed: ${isCompleted ? 'Yes' : 'No'}";
  }
}

void viewTasks(List<Task> tasks) {
  for (var task in tasks) {
    print(task);
  }
}

void addTask(List<Task> tasks) {
  String description = stdin.readLineSync()!;
  String dueDate = stdin.readLineSync()!;
  tasks.add(Task(description, dueDate));
}

void removeTask(List<Task> tasks) {
  int index = int.parse(stdin.readLineSync()!);
  tasks.removeAt(index);
}

void markCompleted(List<Task> tasks) {
  int index = int.parse(stdin.readLineSync()!);
  tasks[index].isCompleted = true;
}
