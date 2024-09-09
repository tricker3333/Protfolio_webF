import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterwebsite/sections/blog_section.dart';
import 'package:flutterwebsite/sections/clients_section.dart';
import 'package:flutterwebsite/sections/contact_section.dart';
import 'package:flutterwebsite/sections/experience_section.dart';
import 'package:flutterwebsite/sections/footer_section.dart';
import 'package:flutterwebsite/sections/header_section.dart';
import 'package:flutterwebsite/sections/portfolio_section.dart';
import 'package:flutterwebsite/sections/services_section.dart';
import 'package:flutterwebsite/sections/stats_section.dart';
import 'package:flutterwebsite/sections/testimonials_section.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'John Doe Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Roboto',
      ),
      home: PortfolioWebsite(),
    );
  }
}

class PortfolioWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            ExperienceSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            PortfolioSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            ServicesSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            TestimonialsSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            BlogSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            StatsSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            ClientsSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            ContactSection().animate().fadeIn(duration: 1.seconds),
            SizedBox(height: 60),
            FooterSection().animate().fadeIn(duration: 1.seconds),
          ],
        ),
      ),
    );
  }
}
