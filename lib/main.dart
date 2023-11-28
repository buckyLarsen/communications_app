import 'package:communication_assistance_app/basic_needs_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              //action for the settings button
            },
            icon: Icon(Icons.settings),
          ),
          actions: [
            IconButton(
              onPressed: () {
                //action for the home button
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),
        body: ButtonGrid(),
      ),
    );
  }
}

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BasicNeedsPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Basic Needs'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Emotions button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Emotions'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Activities button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Activities'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Social interactions button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Social interactions'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Objects and Descriptors button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Objects and Descriptors'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Locations button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Locations'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Time and Routines button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Time and Routines'),
        ),
        ElevatedButton(
          onPressed: () {
            // Action for Requests and Preferences button
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
          child: const Text('Requests and Preferences'),
        ),
      ],
    );
  }
}
