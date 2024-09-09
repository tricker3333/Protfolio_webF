import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      color: Colors.blueGrey[800],
      child: Column(
        children: [
          // Footer Links
          FadeIn(
            duration: 500.ms,
            repeat: true,
                  delay: 100.ms,
            globalKey: GlobalKey(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                footerLink("Home", () {}),
                footerLink("About", () {}),
                footerLink("Services", () {}),
                footerLink("Portfolio", () {}),
                footerLink("Contact", () {}),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Copyright
          FadeIn(
            duration: 500.ms,
            repeat: true,
                  delay: 300.ms,
            globalKey: GlobalKey(),
            child: Text(
              "© 2024 John Doe. All Rights Reserved.",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerLink(String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: FadeIn(
        duration: 500.ms,
        repeat: true,
                  delay: 200.ms,
        globalKey: GlobalKey(),
        child: Text(
          text,
          style: TextStyle(color: Colors.white70, fontSize: 16, decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
