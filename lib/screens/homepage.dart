import 'package:flutter/material.dart';
import 'package:travel_app/screens/contents_table.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ContentsTable());
  }
}
