// ignore_for_file: prefer_const_constructors

// import 'package:assignment/Screens/taskPage.dart';
import 'package:flutter/material.dart';

import 'Screens/taskPage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {

   Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(50)),
                Text("Welcome to"),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Plan IT",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 300,
                ),
                Text(
                    "Your personal task management \n           and planning solution"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: Builder(builder: (context) {
                    return ElevatedButton(
                      onPressed: () {
                        // setState(() {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => TaskPage()));
                        // });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TaskPage()),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 36, 34, 34),
                          ),
                          foregroundColor: MaterialStatePropertyAll(
                              const Color.fromARGB(255, 238, 231, 231))),
                      child: Text("Let's get started"),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
