import 'package:flutter/material.dart';
import 'package:intuition/main.dart';

import 'task.dart';

class Todo extends StatefulWidget {
  final Task todo;
  final bool edit;

  const Todo({super.key, required this.todo, required this.edit});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.todo.title,
            style: TextStyle(
              fontSize: 15,
              decoration: widget.todo.completed
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: widget.todo.completed
                  ? Colors.grey
                  : (MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white),
            ),
          ),
          IconButton(
            onPressed: !widget.edit
                ? () {
                    MyApp.themeNotifier.value =
                        MyApp.themeNotifier.value == ThemeMode.light
                            ? ThemeMode.dark
                            : ThemeMode.light;
                  }
                : () {
                    widget.todo.complete();
                    setState(() {});
                  },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
