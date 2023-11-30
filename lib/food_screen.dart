// add_Item_Screen.dart

import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
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
                      color: const Color.fromARGB(255, 3, 6, 7),
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
