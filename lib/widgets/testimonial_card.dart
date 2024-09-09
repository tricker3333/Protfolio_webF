import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TestimonialCard extends StatelessWidget {
  final String name;
  final String feedback;
  final String image;

  TestimonialCard({required this.name, required this.feedback, required this.image});

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 1200;
    final isMediumScreen = MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width <= 1200;

    return Container(
      padding: EdgeInsets.all(isLargeScreen ? 25 : (isMediumScreen ? 20 : 15)),
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: isLargeScreen ? 10 : (isMediumScreen ? 8 : 6),
            offset: Offset(0, isLargeScreen ? 5 : (isMediumScreen ? 4 : 3)),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: isLargeScreen ? 50 : (isMediumScreen ? 40 : 30),
            backgroundImage: AssetImage(image),
          ).animate().scale(delay: 100.ms, duration: 500.ms),
          SizedBox(height: isLargeScreen ? 20 : (isMediumScreen ? 15 : 10)),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: isLargeScreen ? 22 : (isMediumScreen ? 20 : 18),
              fontWeight: FontWeight.bold,
            ),
          ).animate().fadeIn(delay: 200.ms, duration: 500.ms),
          SizedBox(height: isLargeScreen ? 10 : (isMediumScreen ? 8 : 5)),
          Text(
            feedback,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: isLargeScreen ? 18 : (isMediumScreen ? 16 : 14),
            ),
          ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
        ],
      ),
    );
  }
}
