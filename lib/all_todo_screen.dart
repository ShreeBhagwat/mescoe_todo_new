
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mescoe_todo_new/add_todo_screen.dart';

List<Map<String, dynamic>> todoList = [];

class AllTodoScreen extends StatefulWidget {
  const AllTodoScreen({super.key});

  @override
  State<AllTodoScreen> createState() => _AllTodoScreenState();
}

class _AllTodoScreenState extends State<AllTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add button pressed');
          Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AddTodoScreen()))
              .then((value) {
            log(value.toString());
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todoList[index]['title']),
            subtitle: Text(todoList[index]['description']),
          );
        },
      ),
    );
  }
}
