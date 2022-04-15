import 'package:flutter/material.dart';
import 'package:todo_list/todo_app/data/tasks_data.dart';
import 'package:todo_list/todo_app/widgets/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function deleteTaskCompleteness;

  InCompleteTasksScreen(this.fun, this.deleteTaskCompleteness);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList
                  .where((element) => !element.isCompleted)
                  .toList()[index],
              fun,
              deleteTaskCompleteness);
        });
  }
}
