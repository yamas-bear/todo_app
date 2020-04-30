import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'tibi'),
    Task(name: 'tibbi2'),
    Task(name: 'ttibbi3'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

/*
ListView(
children: <Widget>[
TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
],
);*/
