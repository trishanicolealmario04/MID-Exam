import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.blue),
                title: Text("Phone"),
                subtitle: Text("+63 912 345 6789"),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text("Email"),
                subtitle: Text("globalreciprocalcoleges@.edu"),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.location_on, color: Colors.blue),
                title: Text("Address"),
                subtitle: Text("123 Main Street, Manila, Philippines"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

