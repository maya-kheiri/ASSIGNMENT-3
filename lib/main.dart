import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_list/todo_app/pages/todo_home_page.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData.light(),
      home:  TodoHomePage()));
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  changesIsChecked() {
    isChecked = !isChecked;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomCheckBox(isChecked, changesIsChecked),
          ElevatedButton(onPressed: () {}, child: const Text("print checkbox state"))
        ],
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  bool x;
  Function fun;
  CustomCheckBox(this.x, this.fun, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CustomCheckBoxState();
  }
}

class CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
      value: widget.x,
      onChanged: (v) {
        widget.fun();
        setState(() {});
      },
    );
  }
}
