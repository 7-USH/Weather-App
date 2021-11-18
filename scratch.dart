import 'dart:io';

void main() {
  performTask();
}

void performTask() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = "Task 1 Data";
  print("Task 1 complete");
}

void task2() async {
  Duration time = await Duration(seconds: 5);
  sleep(time);
  String result = "Task 2 Data";
  print("Task 2 complete");
}

void task3() {
  String result = "Task 3 Data";
  print("Task 3 complete ");
}
