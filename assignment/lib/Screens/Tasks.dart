// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Task extends StatelessWidget {
  final String? taskName;
  final String? taskTxt;
  const Task({
    Key? key,
    this.taskName,
    this.taskTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
          height: 120,
          width: 250,
          color: Color(0xFFF5F8FB),
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: SizedBox(height: 35),
                ),
                TextSpan(
                    text: '$taskName\n',
                    style: TextStyle(
                        fontFamily: "Serif",
                        fontSize: 30,
                        color: Colors.black)),
                WidgetSpan(
                  child: SizedBox(height: 21),
                ),
                TextSpan(
                    text: '$taskTxt\n',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                    )),
                WidgetSpan(
                  child: SizedBox(
                    height: 25,
                    width: 180,
                  ),
                ),
                TextSpan(
                  text: getFormattedDateTime(),
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(141, 2, 2, 2)),
                ),
              ],
            ),
          )),
    );
  }

  String getFormattedDateTime() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat("h:mm a d MMMM, y");
    final String formatted = formatter.format(now);
    return formatted;
  }
}
