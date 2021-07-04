// ToDo Fill in the following information
//
// SCSJ3623 Mobile Application Programming
// Exercise 2

// Pair Programming
// Member 1's Name: Nuratifah Binti Zailani    Matric: A18CS0205      Location: Kulai, Johor (i.e. where are you currently located)
// Member 2's Name: Siti Maryam Binti Mohamad Shukri   Matric: A18CS0244    Location: Ipoh, Perak
// Date and time (s):   17/05/2021 , 08.00 pm   (Date and time you conducted the pair programming sessions)

import 'package:flutter/material.dart';

// import 'models/mock_todos.dart';
// import 'screens/todo_list/todo_list_screen.dart';
// import 'screens/task_list/task_list_screen.dart'; //? Later you want to remove this line
import 'router.dart';

void main() => runApp
(
  MaterialApp(
    title: 'MAP Exercise 2',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    onGenerateRoute: createRoute,
  ),
);