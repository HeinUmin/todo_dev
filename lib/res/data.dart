import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map login = {"admin": "password"};

enum Repeat { none, day, workday, holiday, week, month, season, half, year }

class TaskViewModel {
  TaskViewModel(
      {required this.name,
      required this.time,
      this.description,
      this.weight = 1,
      this.repeat = Repeat.none,
      this.complete = false});
  String name;
  DateTime time;
  String? description;
  int weight;
  Repeat repeat;
  bool complete;
}

class GroupViewModel {
  GroupViewModel({required this.name, required this.task, required this.color});
  String name;
  List<TaskViewModel> task;
  Color color;
}

List<GroupViewModel> taskData = [
  GroupViewModel(
      name: 'Group 1',
      task: [
        TaskViewModel(name: 'Task 1', time: DateTime(2021, 1, 1, 0, 0, 0)),
        TaskViewModel(name: 'Task 2', time: DateTime(1979, 10, 20, 13, 18, 29))
      ],
      color: Colors.blue),
  GroupViewModel(
      name: 'Group 2',
      task: [
        TaskViewModel(name: 'Task 3', time: DateTime(2021, 1, 1, 0, 0, 0)),
        TaskViewModel(
            name: 'Task 4 fdafjkdsflasgjaklsfdj as中文 dsaf sdgad as few dg',
            time: DateTime(1979, 10, 20, 13, 18, 29))
      ],
      color: Colors.green),
  GroupViewModel(
      name: 'Group 3',
      task: [
        TaskViewModel(name: 'Task 2', time: DateTime(2021, 1, 1, 0, 0, 0)),
        TaskViewModel(name: 'Task 1', time: DateTime(1979, 10, 20, 13, 18, 29))
      ],
      color: Colors.yellow)
];
