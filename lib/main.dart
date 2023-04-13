import 'package:flutter/material.dart';
import 'package:mescoe_todo_new/all_todo_screen.dart';

void main() {
  runApp(TodoMescoe());
}

class TodoMescoe extends StatelessWidget {
  const TodoMescoe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AllTodoScreen(),
    );
  }
}
