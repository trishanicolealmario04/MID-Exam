import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final List<String> courses = [
    "Mathematics",
    "Science",
    "English",
    "Computer Studies",
    "History",
    "Physical Education",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Courses")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(Icons.book, color: Colors.blue),
              title: Text(courses[index]),
            ),
          );
        },
      ),
    );
  }
}
