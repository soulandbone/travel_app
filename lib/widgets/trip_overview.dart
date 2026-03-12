import 'package:flutter/material.dart';

class TripOverView extends StatelessWidget {
  const TripOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trip OverView'), actions: []),

      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.amber),
          child: Text('Hola'),
        ),
      ),
    );
  }
}
