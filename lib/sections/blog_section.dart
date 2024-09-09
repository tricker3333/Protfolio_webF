import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/blog_card.dart';

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
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: 80),
      color: Colors.blueGrey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            "Latest Blog Posts",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth > 800 ? 30 : 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
          SizedBox(height: 20),
          // Subtitle
          Text(
            "Insights, tutorials, and updates from my development journey.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: screenWidth > 800 ? 18 : 16,
            ),
          ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
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
              ).animate().fadeIn(delay: (100 + index * 100).ms, duration: 500.ms);
            },
          ),
        ],
      ),
    );
  }
}
