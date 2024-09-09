import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class StatCard extends StatelessWidget {
  final String number;
  final String label;

  StatCard({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(
        maxWidth: screenWidth > 1200 ? 250 : (screenWidth > 800 ? 200 : 150),
        maxHeight: screenWidth > 1200 ? 150 : (screenWidth > 800 ? 120 : 100),
      ),
      decoration: BoxDecoration(
        color: Colors.blueGrey[700],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Number
          Text(
            number,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: screenWidth > 1200 ? 40 : (screenWidth > 800 ? 35 : 30),
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
          SizedBox(height: 10),
          // Label
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth > 1200 ? 18 : (screenWidth > 800 ? 16 : 14),
            ),
          ).animate().fadeIn(delay: 200.ms, duration: 500.ms),
        ],
      ),
    );
  }
}