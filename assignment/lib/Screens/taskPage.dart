// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutteruiassignment/Screens/Tasks.dart';

// import 'package:intl/intl.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<Task> task = [
    Task(
        taskName: 'Task One',
        taskTxt:
            'Your Personal task management and planning solution for planning your day, week & months'),
    Task(
        taskName: 'Task Two',
        taskTxt:
            'Your Personal task management and planning solution for planning your day, week & months'),
    Task(
        taskName: 'Task Three',
        taskTxt:
            'Your Personal task management and planning solution for planning your day, week & months')
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 24, 24, 24),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Task Board',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 24, 24, 24)),
            ),
            centerTitle: true),
        body: SafeArea(
            child: ListView.builder(
                itemCount: task.length,
                itemBuilder: (context, int index) {
                  return Task(
                    taskName: task[index].taskName,
                    taskTxt: task[index].taskTxt,
                  );
                })),
      ),
    );
  }
}
