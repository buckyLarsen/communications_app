// home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // First Row of Buttons
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: buildButton(context, '/configure', Icons.settings, 'Configure', iconSize: 40.0)),
                  const SizedBox(width: 20),
                   Expanded(child: buildButton(context, '/objects', Icons.category, 'Objects', iconSize: 40.0)),
                  const SizedBox(width: 20),
                  Expanded(child: buildButton(context, '/food', Icons.restaurant, 'Food', iconSize: 40.0)),
                  const SizedBox(width: 20),
                  Expanded(child: buildButton(context, '/emotions', Icons.mood, 'Emotions', iconSize: 40.0)),
                ],
              ),
            ),

            const SizedBox(height: 20), // Add spacing between rows

            // Second Row of Buttons
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: buildButton(context, '/activities', Icons.event, 'Activities', iconSize: 40.0)),
                  const SizedBox(width: 20),
                  Expanded(child: buildButton(context, '/locations', Icons.map, 'Locations', iconSize: 40.0)),
                  const SizedBox(width: 20),
                  Expanded(child: buildButton(context, '/basic_needs', Icons.health_and_safety, 'Basic Needs', iconSize: 40.0)),
                  const SizedBox(width: 20),
                  Expanded(child: buildButton(context, '/time_routines', Icons.schedule, 'Time and Routines', iconSize: 40.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String route, IconData iconData, String label, {double iconSize = 30.0}) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, double.infinity),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: iconSize,
            height: iconSize,
            child: Icon(
              iconData,
              size: iconSize,
              color: const Color.fromARGB(255, 3, 8, 10),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
