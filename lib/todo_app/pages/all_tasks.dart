import 'package:flutter/material.dart';
import 'package:todo_list/todo_app/data/tasks_data.dart';
import 'package:todo_list/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function deleteTaskCompleteness;

  AllTasksScreen(this.fun, this.deleteTaskCompleteness);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], fun, deleteTaskCompleteness);
        });
  }
}
