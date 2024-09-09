import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutterwebsite/widgets/blog_card.dart';

class BlogSection extends StatelessWidget {
  final List<Map<String, String>> blogPosts = [
    {
      'title': 'Flutter for Beginners',
      'excerpt': 'An introductory guide to building apps with Flutter.',
      'image': 'assets/imgs/blog1.jpg',
      'date': 'September 1, 2023',
    },
    {
      'title': 'Advanced State Management',
      'excerpt': 'Deep dive into state management techniques in Flutter.',
      'image': 'assets/imgs/blog2.jpg',
      'date': 'October 15, 2023',
    },
    {
      'title': 'Optimizing Flutter Performance',
      'excerpt': 'Tips and tricks to make your Flutter apps run smoothly.',
      'image': 'assets/imgs/blog3.jpg',
      'date': 'November 20, 2023',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Determine grid cross axis count based on screen width
    int crossAxisCount;
    if (screenWidth > 1200) {
      crossAxisCount = 3;
    } else if (screenWidth > 800) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: 80),
      color: Colors.blueGrey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          FadeIn(
            duration: Duration(milliseconds: 500),
            repeat: true,
                  delay: Duration(milliseconds: 100),
            globalKey: GlobalKey(),
            child: Text(
              "Latest Blog Posts",
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
          FadeIn(
            duration: Duration(milliseconds: 500),
            repeat: true,
                  delay: Duration(milliseconds: 300),
            globalKey: GlobalKey(),
            child: Text(
              "Insights, tutorials, and updates from my development journey.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: screenWidth > 800 ? 18 : 16,
              ),
            ),
          ),
          SizedBox(height: 40),
          // Blog Posts Grid
          GridView.builder(
            itemCount: blogPosts.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: screenWidth > 1200 ? 30 : 20,
              mainAxisSpacing: screenWidth > 1200 ? 30 : 20,
            ),
            itemBuilder: (context, index) {
              return BlogCard(
                title: blogPosts[index]['title']!,
                excerpt: blogPosts[index]['excerpt']!,
                image: blogPosts[index]['image']!,
                date: blogPosts[index]['date']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
