import 'package:flutter/material.dart';
import 'package:intuition/todo.dart';

import 'task.dart';

class AddPage extends StatelessWidget {
  final Tasks todos;
  final TextEditingController _textController = TextEditingController();
  AddPage({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Add To-Do"),
                    content: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(hintText: "Content"),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          todos.addTask(Task(title: _textController.text));
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        child: const Icon(Icons.add),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: const Icon(Icons.cancel),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.question_mark),
          )
        ],
      ),
      body: Column(
        children: todos
            .scrambledExport()
            .map((e) => Todo(todo: e, edit: false))
            .toList(),
      ),
    );
  }
}
