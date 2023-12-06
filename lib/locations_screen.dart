// basic_needs_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'button_manager_locations.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  _LocationsScreenState createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  final ButtonManager buttonManager = ButtonManager();
  final FlutterTts flutterTts = FlutterTts();

  void _speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
  }

  void _addUserButton() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController _textEditingController = TextEditingController();

        return AlertDialog(
          title: Text('Add Button'),
          content: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              labelText: 'Enter text for custom button',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                String label = _textEditingController.text;
                if (label.isNotEmpty) {
                  setState(() {
                    buttonManager.addUserButton('basic_needs', label);
                  });
                  Navigator.of(context).pop();
                } else {
                  print('Text field is empty. Please enter text for the button label.');
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(40, 40),
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 30,
            height: 30,
            child: Icon(
              Icons.volume_up,
              color: const Color.fromARGB(255, 3, 6, 7),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Locations')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20), // Add spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton('Home', () {
                  Navigator.pushNamed(context, '/'); // Navigate to Home page
                }),
                const SizedBox(width: 20), // Add spacing between Home and Add Button
                _buildButton('Add Button', _addUserButton),
              ],
            ),
            const SizedBox(height: 10), // Add spacing
            for (var row in buttonManager.screenButtonDataMap['basic_needs'] ?? [])
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: (row as List<String>).map((label) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: _buildButton(label, () {
                          _speak(label);
                        }),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10), // Add spacing between rows
                ],
              ),
          ],
        ),
      ),
    );
  }
}
