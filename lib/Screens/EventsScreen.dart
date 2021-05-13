import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  static String id = 'EventsScreen';
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6a5B95),
        automaticallyImplyLeading: true,
        title: Text(
          'Events',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/img/woman.jpg'),
              ),
              title: Text(
                'Event 1',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF6a5B95),
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                'Events Events Events Events',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6a5B95),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
