import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterwebsite/widgets/social_icons.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLargeScreen = constraints.maxWidth > 1200;
        final isMediumScreen = constraints.maxWidth <= 1200 && constraints.maxWidth > 800;

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: isLargeScreen ? 60 : (isMediumScreen ? 40 : 20),
            vertical: isLargeScreen ? 80 : (isMediumScreen ? 60 : 40),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey[800]!, Colors.blueGrey[600]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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
              // Header Row with Profile Picture and Greetings
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/imgs/profile.jpg',
                      width: isLargeScreen ? 120 : (isMediumScreen ? 100 : 80),
                      height: isLargeScreen ? 120 : (isMediumScreen ? 100 : 80),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: isLargeScreen ? 30 : (isMediumScreen ? 20 : 10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isLargeScreen ? 40 : (isMediumScreen ? 30 : 24),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Roboto',
                        ),
                      ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
                      Text(
                        "I'm John Doe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isLargeScreen ? 60 : (isMediumScreen ? 50 : 36),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Subtitle
              Text(
                "Full Stack Web Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isLargeScreen ? 30 : (isMediumScreen ? 24 : 18),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ).animate().fadeIn(delay: 500.ms, duration: 500.ms),
              SizedBox(height: 20),
              // Description
              Text(
                "Crafting beautiful websites with performance and scalability in mind.",
                style: TextStyle(color: Colors.white70, fontSize: isLargeScreen ? 18 : (isMediumScreen ? 16 : 14)),
              ).animate().fadeIn(delay: 700.ms, duration: 500.ms),
              SizedBox(height: 40),
              // Social Icons
              Row(
                children: [
                  SocialIcon(icon: Icons.linked_camera, url: "https://linkedin.com"),
                  SizedBox(width: 20),
                  SocialIcon(icon: Icons.code, url: "https://github.com"),
                  SizedBox(width: 20),
                  SocialIcon(icon: Icons.email, url: "mailto:john.doe@example.com"),
                ],
              ).animate().fadeIn(delay: 900.ms, duration: 500.ms),
            ],
          ),
        );
      },
    );
  }
}
