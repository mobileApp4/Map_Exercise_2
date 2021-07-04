// Todo Define the model class Todo here. The attributes are given. Complete the rest.

import 'task.dart';

class Todo 
{
  String title;

  List<Task> task;

  int get percent => ((task.where((task) => task.completed).length / task.length)*100).round();
  
  Todo({
    this.title,
    this.task,
  });
  
  Todo.copy(Todo from)
    : this(
      title: from.title,
      task: from.task.map((task) => Task.copy(task)).toList(),
      );
}
