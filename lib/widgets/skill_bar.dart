import 'package:flutter/material.dart';

class SkillBar extends StatelessWidget {
  final String skill;
  final double percentage;

  SkillBar({required this.skill, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 5),
          LinearProgressIndicator(
            value: percentage,
            backgroundColor: Colors.white24,
            color: Colors.blueAccent,
            minHeight: 10,
          ),
        ],
      ),
    );
  }
}
