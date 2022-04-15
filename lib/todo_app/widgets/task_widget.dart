import 'package:flutter/material.dart';
import 'package:todo_list/todo_app/data/tasks_data.dart';
import 'package:todo_list/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function deleteTaskCompleteness;
  Task task;
  TaskWidget(this.task, this.fun, this.deleteTaskCompleteness);
  @override  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 2),
        decoration: BoxDecoration(
            color: task.isCompleted
                ? const Color(0xFF211551).withOpacity(0.7)
                : const Color(0xFF86829D).withOpacity(0.7),
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: CheckboxListTile(
          title: Text(task.title),
          value: task.isCompleted,
          activeColor: const Color(0xFFD84B71).withOpacity(0.4),
          onChanged: (v) {
            fun(task);
          },
          secondary: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              fun(task);
              deleteTaskCompleteness(task);
            },
          ),
        ));
  }
}
