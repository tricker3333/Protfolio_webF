import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutterwebsite/pages/new.dart';
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
          visualDensity: VisualDensity.adaptivePlatformDensity,
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

class _PortfolioWebsiteState extends State<PortfolioWebsite> with SingleTickerProviderStateMixin {
  bool isPageLoaded = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: 600.milliseconds);
    _animation = Tween<double>(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );
    super.initState();
    // Simulate loading delay (could be data loading, etc.)
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isPageLoaded = true;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: isPageLoaded ? SingleChildScrollView(
        controller: context.scrollController,
        // physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            const SizedBox(height: 60),
            ExperienceSection(),
            const SizedBox(height: 60),
            PortfolioSection(),
            const SizedBox(height: 60),
            ServicesSection(),
            const SizedBox(height: 60),
            TestimonialsSection(),
            const SizedBox(height: 60),
            BlogSection(),
            const SizedBox(height: 60),
            StatsSection(),
            const SizedBox(height: 60),
            ClientsSection(),
            const SizedBox(height: 60),
            ContactSection(),
            const SizedBox(height: 60),
            FooterSection(),
          ],
        ),
      ) : const Center(child: CircularProgressIndicator(),)
    );
  }
}
