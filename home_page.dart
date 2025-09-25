import 'package:flutter/material.dart';
import 'about_page.dart';
import 'events_page.dart';
import 'courses_page.dart';
import 'contact_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Image.asset('logo.jpg', height: 100),
            SizedBox(width: 10),
            Text("Global Reciprocal Colleges"),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Image.asset('logo.jpg', height: 60),
                  SizedBox(height: 10),
                  Text("Global Reciprocal Colleges",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            buildDrawerItem(context, Icons.home, "Home", HomePage()),
            buildDrawerItem(context, Icons.info, "About", AboutPage()),
            buildDrawerItem(context, Icons.event, "Events", EventPage()),
            buildDrawerItem(context, Icons.book, "Courses", CoursesPage()),
            buildDrawerItem(context, Icons.contact_mail, "Contact", ContactPage()),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Welcome to ABC School",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  buildCard(context, Icons.info, "About", AboutPage()),
                  buildCard(context, Icons.event, "Events", EventsPage()),
                  buildCard(context, Icons.book, "Courses", CoursesPage()),
                  buildCard(context, Icons.contact_mail, "Contact", ContactPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, IconData icon, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.blue),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItem(BuildContext context, IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}