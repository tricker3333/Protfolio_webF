import 'package:flutter/material.dart';

class ExperienceTimeline extends StatelessWidget {
  final String year;
  final String company;
  final String description;

  ExperienceTimeline({required this.year, required this.company, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          // Timeline Indicator
          Icon(Icons.brightness_1, color: Colors.white, size: 15),
          SizedBox(width: 20),
          // Timeline Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  company,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
