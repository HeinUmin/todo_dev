import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map login = {"admin": "password"};

enum Repeat { none, day, workday, holiday, week, month, season, half, year }
enum Alarm { none, present, ten, half, hour, shi, day, two, week }

String repeatString(Repeat repeat) {
  switch (repeat) {
    case Repeat.none:
      return '不重复';
    case Repeat.day:
      return '每天';
    case Repeat.workday:
      return '工作日';
    case Repeat.holiday:
      return '休息日';
    case Repeat.week:
      return '每周';
    case Repeat.month:
      return '每月';
    case Repeat.season:
      return '每季度';
    case Repeat.half:
      return '每半年';
    case Repeat.year:
      return '每年';
    default:
      return '';
  }
}

String alarmString(Alarm alarm) {
  switch (alarm) {
    case Alarm.none:
      return '不提醒';
    case Alarm.present:
      return '即时提醒';
    case Alarm.ten:
      return '提前10分钟';
    case Alarm.half:
      return '提前半小时';
    case Alarm.hour:
      return '提前1小时';
    case Alarm.shi:
      return '提前2小时';
    case Alarm.day:
      return '提前1天';
    case Alarm.two:
      return '提前2天';
    case Alarm.week:
      return '提前1周';
    default:
      return '';
  }
}

Repeat stringRepeat(String str) {
  switch (str) {
    case '不重复':
      return Repeat.none;
    case '每天':
      return Repeat.day;
    case '工作日':
      return Repeat.workday;
    case '休息日':
      return Repeat.holiday;
    case '每周':
      return Repeat.week;
    case '每月':
      return Repeat.month;
    case '每季度':
      return Repeat.season;
    case '每半年':
      return Repeat.half;
    case '每年':
      return Repeat.year;
    default:
      return Repeat.none;
  }
}

Alarm stringAlarm(String str) {
  switch (str) {
    case '不提醒':
      return Alarm.none;
    case '即时提醒':
      return Alarm.present;
    case '提前10分钟':
      return Alarm.ten;
    case '提前半小时':
      return Alarm.half;
    case '提前1小时':
      return Alarm.hour;
    case '提前2小时':
      return Alarm.shi;
    case '提前1天':
      return Alarm.day;
    case '提前2天':
      return Alarm.two;
    case '提前1周':
      return Alarm.week;
    default:
      return Alarm.none;
  }
}

var showComplete = true;

class TaskViewModel {
  TaskViewModel(
      {required this.name,
      required this.time,
      required this.key,
      this.description,
      this.weight = 1,
      this.repeat = Repeat.none,
      this.alarm = Alarm.none,
      this.complete = false,
      this.selected});
  String name;
  DateTime time;
  String? description;
  int weight;
  Repeat repeat;
  bool complete;
  int key;
  bool? selected;
  Alarm alarm;
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
      name: '默认分组',
      key: 0,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2 test long text with a long text',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  GroupViewModel(
      name:
          'Group 2 test long text with a long text and another long text and more and more and more and more and more',
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
      color: Colors.yellow),
  GroupViewModel(
      name: 'Group 1',
      key: 3,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2 test long text with a long text',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  GroupViewModel(
      name: 'Group 1',
      key: 4,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2 test long text with a long text',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  GroupViewModel(
      name: 'Group 1',
      key: 5,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2 test long text with a long text',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  GroupViewModel(
      name: 'Group 1',
      key: 6,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2 test long text with a long text',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  GroupViewModel(
      name: 'Group 1',
      key: 7,
      task: [
        TaskViewModel(
            name: 'Task 1',
            time: DateTime(2022, 1, 1, 0, 0, 0),
            key: 0,
            weight: 1),
        TaskViewModel(
            name: 'Task 2 test long text with a long text',
            time: DateTime(1979, 10, 20, 13, 18, 29),
            key: 1,
            weight: 2)
      ],
      color: Colors.blue),
  // GroupViewModel(
  //     name: 'Group 1',
  //     key: 8,
  //     task: [
  //       TaskViewModel(
  //           name: 'Task 1',
  //           time: DateTime(2022, 1, 1, 0, 0, 0),
  //           key: 0,
  //           weight: 1),
  //       TaskViewModel(
  //           name: 'Task 2 test long text with a long text',
  //           time: DateTime(1979, 10, 20, 13, 18, 29),
  //           key: 1,
  //           weight: 2)
  //     ],
  //     color: Colors.blue),
  // GroupViewModel(
  //     name: 'Group 1',
  //     key: 9,
  //     task: [
  //       TaskViewModel(
  //           name: 'Task 1',
  //           time: DateTime(2022, 1, 1, 0, 0, 0),
  //           key: 0,
  //           weight: 1),
  //       TaskViewModel(
  //           name: 'Task 2 test long text with a long text',
  //           time: DateTime(1979, 10, 20, 13, 18, 29),
  //           key: 1,
  //           weight: 2)
  //     ],
  //     color: Colors.blue),
  // GroupViewModel(
  //     name: 'Group 1',
  //     key: 10,
  //     task: [
  //       TaskViewModel(
  //           name: 'Task 1',
  //           time: DateTime(2022, 1, 1, 0, 0, 0),
  //           key: 0,
  //           weight: 1),
  //       TaskViewModel(
  //           name: 'Task 2 test long text with a long text',
  //           time: DateTime(1979, 10, 20, 13, 18, 29),
  //           key: 1,
  //           weight: 2)
  //     ],
  //     color: Colors.blue),
  // GroupViewModel(
  //     name: 'Group 1',
  //     key: 11,
  //     task: [
  //       TaskViewModel(
  //           name: 'Task 1',
  //           time: DateTime(2022, 1, 1, 0, 0, 0),
  //           key: 0,
  //           weight: 1),
  //       TaskViewModel(
  //           name: 'Task 2 test long text with a long text',
  //           time: DateTime(1979, 10, 20, 13, 18, 29),
  //           key: 1,
  //           weight: 2)
  //     ],
  //     color: Colors.blue),
  // GroupViewModel(
  //     name: 'Group 1',
  //     key: 12,
  //     task: [
  //       TaskViewModel(
  //           name: 'Task 1',
  //           time: DateTime(2022, 1, 1, 0, 0, 0),
  //           key: 0,
  //           weight: 1),
  //       TaskViewModel(
  //           name: 'Task 2 test long text with a long text',
  //           time: DateTime(1979, 10, 20, 13, 18, 29),
  //           key: 1,
  //           weight: 2)
  //     ],
  //     color: Colors.blue),
  // GroupViewModel(
  //     name: 'Group 1',
  //     key: 13,
  //     task: [
  //       TaskViewModel(
  //           name: 'Task 1',
  //           time: DateTime(2022, 1, 1, 0, 0, 0),
  //           key: 0,
  //           weight: 1),
  //       TaskViewModel(
  //           name: 'Task 2 test long text with a long text',
  //           time: DateTime(1979, 10, 20, 13, 18, 29),
  //           key: 1,
  //           weight: 2)
  //     ],
  //     color: Colors.blue),
];
