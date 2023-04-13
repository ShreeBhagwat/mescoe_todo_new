import 'package:flutter/material.dart';
import 'package:mescoe_todo_new/all_todo_screen.dart';

class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({super.key});

  final TextEditingController titleTextEditingController =
      TextEditingController();

  final TextEditingController descriptionTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add to do screen'),
        ),
        body: Column(
          children: [
            TextField(
              controller: titleTextEditingController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: descriptionTextEditingController,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final todo = {
                  'title': titleTextEditingController.text,
                  'description': descriptionTextEditingController.text,
                };
                todoList.add(todo);
                Navigator.pop(context, true);
              },
              child: Text('Save'),
            ),
          ],
        ));
  }
}
