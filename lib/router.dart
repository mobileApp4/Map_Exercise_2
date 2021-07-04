// ToDo If you are using named routes, centralized all your routes here. Otherwise, you can remove this file.
import 'package:exercise2_map/screens/todo_list/todo_list_screen.dart';
import 'package:exercise2_map/screens/task_list/task_list_screen.dart';
import 'package:exercise2_map/models/mock_todos.dart';
import 'package:flutter/material.dart';

Route<dynamic> createRoute(settings) 
{
  switch(settings.name)
  {
    case '/' :

    case '/todoListScreen' :
      return MaterialPageRoute(builder: (_)=>TodoListScreen(myTodoList));

    case '/taskListScreen' :
      return MaterialPageRoute(
        builder: (_) => TaskListScreen(
          settings.arguments['index'], settings.arguments['todo']));

      break;
    default:
  }
  return null;
}