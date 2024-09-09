import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement URL launcher or navigation
        print("Navigating to $url");
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey[700],
        ),
        child: Icon(icon, color: Colors.white, size: 30),
      ).animate().scale(delay: 100.ms, duration: 400.ms, curve: Curves.easeOut),
    );
  }
}
