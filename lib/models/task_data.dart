import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

//ChangeNotifierを継承することで変更したときに通知を送ることができるようになる
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'tibi'),
    Task(name: 'tibbi2'),
    Task(name: 'ttibbi3'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners(); //完了したら通知を送ってデータの更新を行う必要がある。
  }
}
