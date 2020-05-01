import 'package:flutter/material.dart';
import 'task.dart';

//ChangeNotifierを継承することで変更したときに通知を送ることができるようになる
class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'tibi'),
    Task(name: 'tibbi2'),
    Task(name: 'ttibbi3'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
