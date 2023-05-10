class Task {
  String title;
  bool completed = false;
  Task({required this.title});

  void complete() {
    completed = true;
  }
}

class Tasks {
  List<Task> tasks;
  Tasks({required this.tasks});

  void addTask(Task newTask) {
    tasks.add(newTask);
  }

  void completeTask(String taskName) {
    tasks.firstWhere((element) => element.title == taskName).complete();
  }

  List<Task> scrambledExport() {
    tasks.shuffle();
    return tasks;
  }
}
