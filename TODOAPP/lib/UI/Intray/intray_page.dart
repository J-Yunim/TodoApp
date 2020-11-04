import 'package:TODOAPP/models/classes/task.dart';
import 'package:TODOAPP/models/global.dart';
import 'package:TODOAPP/models/widgets/intray_todo_widget.dart';
import 'package:flutter/material.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkgrey,
      child: _buildReorderableListSimple(context),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: IntrayTodo(
        title: item.title,
      ),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ReorderableListView(
          padding: EdgeInsets.only(top: 300),
          children: taskList
              .map((Task item) => _buildListTile(context, item))
              .toList(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              Task item = taskList[oldIndex];
              taskList.remove(item);
              taskList.insert(newIndex, item);
            });
          }),
    );
  }

  List<Task> getList() {
    for (int i = 0; i < 5; i++) {
      taskList.add(Task("My First Todo" + i.toString(), false, i.toString()));
    }
    return taskList;
  }
}
