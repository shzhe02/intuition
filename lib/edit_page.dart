import 'package:flutter/material.dart';
import 'package:intuition/todo.dart';

import 'task.dart';

class EditPage extends StatelessWidget {
  final Tasks todos;
  const EditPage({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: todos
            .scrambledExport()
            .map((e) => Todo(todo: e, edit: true))
            .toList(),
      ),
    );
  }
}
