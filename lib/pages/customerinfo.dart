import 'package:flutter/material.dart';

class CustomInfo extends StatelessWidget {
  final String name;

  const CustomInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}