import 'package:flutter/material.dart';
import 'package:spain_travel/pages/home.dart';
import 'package:spain_travel/pages/itinerary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Viaje España'),
        '/itinerary': (context) => const ItineraryPage(title: 'Itinerario'),
      },
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFAA151B),
          primaryContainer: Color(0xFFF97476),
          primaryFixed: Color(0xFFEB2129),
          onPrimaryFixedVariant: Color(0xFF6D090E),
          secondary: Color(0xFFF1C51E),
          secondaryContainer: Color(0xFFFFE0B2),
          secondaryFixed: Color(0xFFC39F16),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Viaje España'),
    );
  }
}