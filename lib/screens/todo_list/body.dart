// ToDO Complete this file. This class should receive data from the TodoListScreen. The UI structure has been provided
//
import 'package:flutter/material.dart';

import '../../models/todo.dart';
// import '../task_list/task_list_screen.dart';

class Body extends StatefulWidget 
{
  final List<Todo> todo;
  Body(this.todo);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> 
{
  void taskList(context, int index) async 
  {
    var nTodo = await Navigator.pushNamed(context, '/taskListScreen', 
      arguments: {'index': index, 'todo': Todo.copy(widget.todo[index])});
    
    if(nTodo!=null)
    {
      setState(() => widget.todo[index] = nTodo);
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return ListView.separated(
      itemCount: widget.todo.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(widget.todo[index].title),
        subtitle: Text('This list have ${widget.todo[index].task.length} task'),
        trailing: CircleAvatar(
          child: Text(widget.todo[index].percent.round().toString()),
        ),
        onTap: () {
          taskList(context,index);
        },
      ),
    );
  }
}