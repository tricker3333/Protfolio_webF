import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String excerpt;
  final String image;
  final String date;

  BlogCard({required this.title, required this.excerpt, required this.image, required this.date});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 1200;
    final isMediumScreen = screenWidth > 800 && screenWidth <= 1200;

    return GestureDetector(
      onTap: () {
        // Implement navigation to blog details
        print("Navigating to $title");
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: isLargeScreen ? 300 : (isMediumScreen ? 250 : 200),
          maxHeight: isLargeScreen ? 400 : (isMediumScreen ? 350 : 300),
        ),
        decoration: BoxDecoration(
          color: Colors.blueGrey[800],
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Blog Image
            Container(
              height: isLargeScreen ? 150 : (isMediumScreen ? 130 : 110),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(isLargeScreen ? 20 : (isMediumScreen ? 15 : 10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Blog Title
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isLargeScreen ? 20 : (isMediumScreen ? 18 : 16),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Blog Excerpt
                  Text(
                    excerpt,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: isLargeScreen ? 16 : (isMediumScreen ? 14 : 12),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Blog Date
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: isLargeScreen ? 14 : (isMediumScreen ? 12 : 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
