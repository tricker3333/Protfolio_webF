import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NavigationBar extends StatelessWidget {
  final List<String> navItems = ["Home", "About", "Services", "Portfolio", "Testimonials", "Blog", "Contact"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      color: Colors.blueGrey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo or Name
          Text(
            "John Doe",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
          // Navigation Links
          Row(
            children: navItems.map((item) {
              return GestureDetector(
                onTap: () {
                  // Implement smooth scroll to the section
                  print("Navigating to $item");
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    item,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ).animate().fadeIn(delay: 200.ms, duration: 500.ms),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
