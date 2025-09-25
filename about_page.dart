import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "ABC School is dedicated to providing quality education to students. "
                  "We focus on academic excellence and holistic development.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}