import 'package:flutter/material.dart';

class ItineraryPage extends StatefulWidget {
  const ItineraryPage({super.key, required this.title});
  final String title;

  @override
  State<ItineraryPage> createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary, // Cor do ícone
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Itinerary Page',
            ),
          ],
        ),
      ),
    );
  }
}