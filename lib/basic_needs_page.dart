import 'package:flutter/material.dart';

class BasicNeedsPage extends StatelessWidget {
  const BasicNeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Action for the "Settings" button in Basic Needs page
          },
          icon: Icon(Icons.settings),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Action for the "Home" button in Basic Needs page
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Action for Basic Needs button in the Basic Needs page
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
      ),
    );
  }
}
