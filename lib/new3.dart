import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:video_player/video_player.dart'; // Add for video background support

class PortfolioWebsite3 extends StatefulWidget {
  @override
  _PortfolioWebsite3State createState() => _PortfolioWebsite3State();
}

class _PortfolioWebsite3State extends State<PortfolioWebsite3> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video_bg.mp4")
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background video
          if (_controller.value.isInitialized)
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          // Gradient overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Content
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerSection().animate().fadeIn(duration: 800.ms).slideY(),
                  SizedBox(height: 80),
                  experienceSection().animate().fadeIn(duration: 800.ms).slideY(),
                  SizedBox(height: 80),
                  portfolioSection().animate().fadeIn(duration: 800.ms).slideY(),
                  SizedBox(height: 80),
                  servicesSection().animate().fadeIn(duration: 800.ms).slideY(),
                  SizedBox(height: 80),
                  contactSection().animate().fadeIn(duration: 800.ms).slideY(),
                  SizedBox(height: 80),
                  footerSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Header section with larger fonts and white space
  Widget headerSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, I’m",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "John Doe",
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Full Stack Web Developer",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  // Improved experience section
  Widget experienceSection() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(height: 30),
          experienceTimeline(
              year: "2010 - 2014",
              company: "ABC Corp",
              description: "Software Developer."),
          experienceTimeline(
              year: "2015 - 2017",
              company: "XYZ Ltd.",
              description: "Senior Developer."),
          experienceTimeline(
              year: "2018 - Present",
              company: "Freelancer",
              description: "Full Stack Developer."),
        ],
      ),
    );
  }

  // Reusable timeline with added padding
  Widget experienceTimeline(
      {required String year, required String company, required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Icon(Icons.brightness_1, color: Colors.white, size: 15),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  company,
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(color: Colors.white38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget servicesSection() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Services",
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          serviceCard("Web Development", "Build modern and responsive websites", Icons.web),
          SizedBox(height: 20),
          serviceCard("Mobile Development", "Create mobile apps for both iOS and Android", Icons.phone_iphone),
          SizedBox(height: 20),
          serviceCard("Consulting", "Provide expert advice on web technologies", Icons.lightbulb),
        ],
      ),
    );
  }

  Widget serviceCard(String title, String description, IconData icon) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 40),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(color: Colors.white38, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget contactSection() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Me",
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "Feel free to reach out for any project or collaboration opportunities.",
            style: TextStyle(color: Colors.white38, fontSize: 18),
          ),
          SizedBox(height: 30),
          contactForm(),
        ],
      ),
    );
  }

  Widget contactForm() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Name",
            labelStyle: TextStyle(color: Colors.white38),
            filled: true,
            fillColor: Colors.blueGrey[800],
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          ),
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(color: Colors.white38),
            filled: true,
            fillColor: Colors.blueGrey[800],
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          ),
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 20),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: "Message",
            labelStyle: TextStyle(color: Colors.white38),
            filled: true,
            fillColor: Colors.blueGrey[800],
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  // Portfolio section with updated layout and spacing
  Widget portfolioSection() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio",
            style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(6, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/imgs/portfolio$index.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 15,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
              ).animate().fadeIn(duration: 700.ms);
            }),
          ),
        ],
      ),
    );
  }

  // Footer section with centered content
  Widget footerSection() {
    return Container(
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Text(
        "© 2024 John Doe. All Rights Reserved.",
        style: TextStyle(color: Colors.white38),
      ),
    );
  }
}
