import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      color: Colors.blueGrey[800],
      child: Column(
        children: [
          // Footer Links
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              footerLink("Home", () {}),
              footerLink("About", () {}),
              footerLink("Services", () {}),
              footerLink("Portfolio", () {}),
              footerLink("Contact", () {}),
            ],
          ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
          SizedBox(height: 20),
          // Copyright
          Text(
            "© 2024 John Doe. All Rights Reserved.",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
        ],
      ),
    );
  }

  Widget footerLink(String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white70, fontSize: 16, decoration: TextDecoration.underline),
      ).animate().fadeIn(delay: 200.ms, duration: 500.ms),
    );
  }
}
