import 'package:flutter/material.dart';
import 'package:todo_list/todo_app/data/tasks_data.dart';
import 'package:todo_list/todo_app/models/task_model.dart';

import 'all_tasks.dart';
import 'complete_tasks.dart';
import 'incomplete_tasks.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({Key? key}) : super(key: key);

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  changeTaskCompleteness(Task task) {
    int index = tasksList.indexOf(task);
    tasksList[index].isCompleted = !tasksList[index].isCompleted;
    setState(() {});
  }
  delete(Task task) {
    int index = tasksList.indexOf(task);
    tasksList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFD84B71).withOpacity(0.4),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.list, color: Colors.white),
                text: 'All Tasks',
              ),
              Tab(
                icon: Icon(Icons.done, color: Colors.white),
                text: 'Complete Tasks',
              ),
              Tab(
                icon: Icon(Icons.cancel, color: Colors.white),
                text: 'InComplete Tasks',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              AllTasksScreen(changeTaskCompleteness, delete),
              CompleteTasksScreen(changeTaskCompleteness, delete),
              InCompleteTasksScreen(changeTaskCompleteness, delete)
            ],
          ),
        ));
  }
}
