import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

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
          FadeIn(
            duration: 500.ms,
            repeat: true,
                  delay: 100.ms,
            globalKey: GlobalKey(),
            child: Text(
              "John Doe",
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Navigation Links
          Row(
            children: navItems.map((item) {
              return FadeIn(
                duration: 500.ms,
                repeat: true,
                  delay: 200.ms,
                globalKey: GlobalKey(),
                child: GestureDetector(
                  onTap: () {
                    // Implement smooth scroll to the section
                    print("Navigating to $item");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      item,
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
