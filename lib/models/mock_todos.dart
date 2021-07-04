// Todo  Create some mock data about todo list as well as mock data of task list for each todo item.

import 'todo.dart';
import 'task.dart';

final myTodoList = <Todo>[
  Todo(
    title: 'MAP Project', 
    //subtitle: 'This list have 5 task(s)', 
    task: 
    [
      Task(title: 'Deliverable #1: Prototype of Project'),
      Task(title: 'Deliverable #2: Prototype 1'),
      Task(title: 'Deliverable #3: Prototype 2'),
      Task(title: 'Deliverable #4: Backend'),
      Task(title: 'Deliverable #5: Release Version'),
    ]
  ),
  Todo(
    title: 'Preparing for Online learning', 
    //subtitle: 'This list have 4 task(s)', 
    task: 
    [
      Task(title: 'Deliverable #1: Prototype of Project'),
      Task(title: 'Deliverable #2: Prototype 1'),
      Task(title: 'Deliverable #3: Prototype 2'),
      Task(title: 'Deliverable #4: Backend'),
    ]
  ),
  Todo(
    title: 'Things to do this weekend', 
    //subtitle: 'This list have 3 task(s)', 
    task: 
    [
      Task(title: 'Deliverable #1: Prototype of Project'),
      Task(title: 'Deliverable #2: Prototype 1'),
      Task(title: 'Deliverable #3: Prototype 2'),
    ]
  ),
];