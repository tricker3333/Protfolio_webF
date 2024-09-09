import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  SocialIcon({super.key, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement URL launcher or navigation
        print("Navigating to $url");
      },
      child: FadeIn(
        duration: 400.ms,
        repeat: true,
                  delay: 100.ms,
        globalKey: GlobalKey(),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey[700],
          ),
          child: Icon(icon, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}
