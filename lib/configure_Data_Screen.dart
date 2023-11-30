// configure_Data_Screen.dart

import 'package:flutter/material.dart';

class ConfigureDataScreen extends StatelessWidget {
  const ConfigureDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configure')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(40, 40),
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.settings,
                      color: const Color.fromARGB(255, 4, 7, 8),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Configure',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Add spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/'); // Navigate to Home page
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(40, 40),
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.home,
                      color: const Color.fromARGB(255, 4, 7, 8),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
