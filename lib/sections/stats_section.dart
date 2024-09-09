import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutterwebsite/widgets/stat_card.dart';

class StatsSection extends StatelessWidget {
  final List<Map<String, String>> stats = [
    {
      'number': '1000+',
      'label': 'Projects Completed',
    },
    {
      'number': '500+',
      'label': 'Happy Clients',
    },
    {
      'number': '150',
      'label': 'Awards Won',
    },
    {
      'number': '3000+',
      'label': 'Hours Worked',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Determine column count and padding based on screen width
    int crossAxisCount;
    EdgeInsetsGeometry padding;

    if (screenWidth > 1200) {
      crossAxisCount = 4;
      padding = EdgeInsets.symmetric(horizontal: 60, vertical: 80);
    } else if (screenWidth > 800) {
      crossAxisCount = 2;
      padding = EdgeInsets.symmetric(horizontal: 40, vertical: 60);
    } else {
      crossAxisCount = 1;
      padding = EdgeInsets.symmetric(horizontal: 20, vertical: 40);
    }

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          SlideInRight(
            globalKey: GlobalKey(),
      repeat: true,
                  delay: 300.ms, duration: 500.ms,
            child: Text(
              "My Achievements",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth > 800 ? 30 : 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SizedBox(height: 20),
          // Subtitle
          SlideInLeft(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 300.ms, duration: 500.ms,
            child: Text(
              "Some of the milestones I've achieved over the years.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: screenWidth > 800 ? 18 : 16,
              ),
            ),
          ),
          SizedBox(height: 40),
          // Stats Grid
          GridView.builder(
            itemCount: stats.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return StatCard(
                number: stats[index]['number']!,
                label: stats[index]['label']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
