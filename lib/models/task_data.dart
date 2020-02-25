import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy coconet'),
    Task(name: 'Buy mobile'),
    Task(name: 'Buy laptop'),
    Task(name: 'sell bycycle'),
    Task(name: 'Start a Company'),
    Task(name: 'Buy Water'),
    Task(name: 'Go to my Flat'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskData {
    return _tasks.length;
  }

  void addTask(String newTextTitle) {
    final task = Task(name: newTextTitle);
    _tasks.add(task);
    notifyListeners();
  }
}
