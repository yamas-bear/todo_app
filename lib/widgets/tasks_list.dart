import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Comsumerは変更をlistenしている。つまりタスクデータが更新されると、ListViewを再構築して、更新する
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              //Providerを用いてTaskDataを取得している
              taskTitle: Provider.of<TaskData>(context).tasks[index].name,
              isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              checkboxCallback: (checkboxState) {
//            setState(() {
//              Provider.of<TaskData>(context).tasks[index].toggleDone();
//            });
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}
