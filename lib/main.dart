// main.dart
import 'package:display/basic_needs_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'emotions_screen.dart';
import 'food_screen.dart';
import 'activities_screen.dart';
import 'locations_screen.dart';
import 'time_routines_screen.dart';
import 'objects_screen.dart';
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
        '/objects': (context) => const ObjectsScreen(),
        '/emotions': (context) => const EmotionsScreen(),
       '/food': (context) => const FoodScreen(),
        '/activities': (context) => const ActivitiesScreen(),
        '/locations': (context) => const LocationsScreen(),
        '/time_routines': (context) => const TimeAndRoutinesScreen(),
        '/configure' : (context) => const ConfigureDataScreen(),
        '/basic_needs' : (context) => const BasicNeedsScreen(),
      },
    );
  }
}
