import 'package:flutter/material.dart';
import 'options_page.dart';
import 'task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  MyApp({super.key});

  Tasks todos = Tasks(tasks: [
    Task(title: "Get caffeine"),
    Task(title: "Get at least 2 hours of sleep"),
    Task(title: "Prepare a demo application for the presentation"),
    Task(title: "Maintain sanity"),
    Task(title: "Get this app to actually launch"),
  ]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          title: 'Unintuitive App',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
          ),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          home: OptionsPage(todos: todos),
        );
      },
    );
  }
}
