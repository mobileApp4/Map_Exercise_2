// Todo Complete this file. This class should receive data from the TodoListScreen. This class should pass data to the classes Bar, Body and Float
//
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import 'float.dart';
import 'bar.dart';
import 'body.dart';

class TaskListScreen extends StatefulWidget 
{
  final int index;
  final Todo todo;

  TaskListScreen(this.index, this.todo);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> 
{
  void removeTask(int index)
  {
    setState(() {
      widget.todo.task[index].completed = !widget.todo.task[index].completed;
      //widget.todo.task.removeAt(index);
    });
  }

  void toggleTask(int index)
  {
    setState(() {
      //widget.todo.task[index].completed = !widget.todo.task[index].completed;
      widget.todo.task.removeAt(index);
    });
  }

  Function close(context)
  {
    return (bool save)
    {
      save? Navigator.pop(context, widget.todo): Navigator.pop(context,null);
    };
  }
  
  @override
  Widget build(BuildContext context) 
  {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(widget.todo.title),
          body: Body(widget.todo.task, removeTask, toggleTask),
          floatingActionButton: Float(close(context)),
        ),
      ),
    );
  }
}
