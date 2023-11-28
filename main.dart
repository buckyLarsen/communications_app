import 'package:flutter/material.dart';
import 'home_Screen.dart';
import 'add_Item_Screen.dart';
import 'configure_Data_Screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/folder1': (context) => const AddItemScreen(),
        '/folder2': (context) => const ConfigureDataScreen(),
      },
    );
  }
}
