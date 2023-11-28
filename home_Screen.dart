// home_Screen.dart

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/folder1');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(40, 40),
                backgroundColor: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.add,
                      color: const Color.fromARGB(255, 2, 4, 5),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Add Item',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Add spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/folder2');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(40, 40),
                backgroundColor: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.settings,
                      color: const Color.fromARGB(255, 3, 8, 10),
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
          ],
        ),
      ),
    );
  }
}
