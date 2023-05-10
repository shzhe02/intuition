import 'package:flutter/material.dart';
import 'package:intuition/add_page.dart';
import 'package:intuition/profile_page.dart';

import 'edit_page.dart';
import 'task.dart';

class OptionsPage extends StatelessWidget {
  final Tasks todos;
  const OptionsPage({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Options"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPage(todos: todos),
                  ),
                );
              },
              child: const Text("To-do list"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(todos: todos),
                  ),
                );
              },
              child: const Text("Change something"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: const Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
