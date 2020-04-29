import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //containerなのはpaddingを指定することができるから
            padding: EdgeInsets.only(
                top: 60, left: 30, bottom: 30, right: 30), //paddingは要素の中
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list,
                      size: 30, color: Colors.lightGreenAccent),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  'To Do',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
