import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  final List<String> events = [
    "Foundation Day - October 10",
    "Science Fair - November 15",
    "Christmas Party - December 20",
    "Graduation Ceremony - March 25",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(Icons.event, color: Colors.blue),
              title: Text(events[index]),
            ),
          );
        },
      ),
    );
  }
}
