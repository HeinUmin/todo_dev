import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map login = {"admin": "password"};

enum Repeat { none, day, workday, holiday, week, month, season, half, year }

var showComplete = true;

class TaskViewModel {
  TaskViewModel(
      {required this.name,
      required this.time,
      required this.key,
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
  int key;
}

class GroupViewModel {
  GroupViewModel(
      {required this.name,
      required this.task,
      required this.color,
      this.fold = false,
      required this.key});
  String name;
  List<TaskViewModel> task;
  Color color;
  bool fold;
  int key;
}

List<GroupViewModel> taskData = [
  GroupViewModel(
      name: 'Group 1',
      key: 0,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  GroupViewModel(
      name: 'Group 2',
      key: 1,
      task: [
        TaskViewModel(
            name: 'Task 3',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 3),
        TaskViewModel(
            name: 'Task 4 fdafjkdsflasgjaklsfdj as中文 dsaf sdgad as few dg',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1)
      ],
      fold: true,
      color: Colors.green),
  GroupViewModel(
      name: 'Group 3',
      key: 2,
      task: [
        TaskViewModel(
            name: 'Task 2',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 1,
            weight: 2),
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 2,
            weight: 3),
        TaskViewModel(
            name: 'Task 3',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 3,
            weight: 3),
        TaskViewModel(
            name: 'Task 4',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 4,
            weight: 3),
        TaskViewModel(
            name: 'Task 3', time: DateTime(2022, 1, 1, 0, 0, 0), key: 5),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 6),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 7),
        TaskViewModel(
            name: 'Task 1', time: DateTime(2022, 1, 1, 0, 0, 0), key: 8),
        TaskViewModel(
            name: 'Task 2',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 9,
            weight: 3),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 10),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 11),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 12),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 13),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 14),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 15),
        TaskViewModel(
            name: 'Task 2',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 16,
            weight: 3),
        TaskViewModel(
            name: 'Task 2', time: DateTime(2022, 1, 1, 0, 0, 0), key: 17),
      ],
      color: Colors.yellow)
];
