// todo Complete this file. This class should receive data from the TaskListScreen. The UI structure has been provided.
//
import 'package:flutter/material.dart';
import '../../models/task.dart';

class Body extends StatelessWidget 
{
  final List<Task> task;
  final Function removeTask;
  final Function toggleTask;


  Body(this.task,this.removeTask,this.toggleTask);

  @override
  Widget build(BuildContext context) 
  {
    return ListView.separated(
      itemCount: task.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
          title: Text(task[index].title,
              style: task[index].completed 
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null),
          onTap: () => {removeTask(index)},
          onLongPress: () => {toggleTask(index)}
      ),
    );
  }
}
