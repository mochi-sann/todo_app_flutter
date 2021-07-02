import 'package:flutter/material.dart';

class ToDoListinpt extends StatefulWidget {
  ToDoListinpt({Key? key, required this.toDoTitle}) : super(key: key);

  final String toDoTitle;

  @override
  _ToDoListinptState createState() => _ToDoListinptState();
}

class _ToDoListinptState extends State<ToDoListinpt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.toDoTitle+ "わーいこれからよろしくなのだ")
      ),
    );
  }
}
