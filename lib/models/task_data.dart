import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'dart:collection';

import 'package:todo/widgets/task_list.dart';

class TaskData extends ChangeNotifier {

  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggler();
    notifyListeners();
  }

  void deleteTask (Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}