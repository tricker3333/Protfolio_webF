import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
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
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SourceSans3',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),

      home: PortfolioWebsite(),
    );
  }
}

class PortfolioWebsite extends StatefulWidget {
  @override
  State<PortfolioWebsite> createState() => _PortfolioWebsiteState();
}

class _PortfolioWebsiteState extends State<PortfolioWebsite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        // controller: context.scrollController,
        // physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            SizedBox(height: 60),
            ExperienceSection(),
            SizedBox(height: 60),
            PortfolioSection(),
            SizedBox(height: 60),
            ServicesSection(),
            SizedBox(height: 60),
            TestimonialsSection(),
            SizedBox(height: 60),
            BlogSection(),
            SizedBox(height: 60),
            StatsSection(),
            SizedBox(height: 60),
            ClientsSection(),
            SizedBox(height: 60),
            ContactSection(),
            SizedBox(height: 60),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
