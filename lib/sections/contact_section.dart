import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

class ContactSection extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 80),
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
          FadeIn(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 100.ms,
            duration: 500.ms,
            child: Text(
              "Contact Me",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SizedBox(height: 20),
          // Subtitle
          FadeIn(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 300.ms,
            duration: 500.ms,
            child: Text(
              "Feel free to reach out for any inquiries or collaboration opportunities.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 40),
          // Contact Form
          contactForm(),
        ],
      ),
    );
  }

  Widget contactForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Name Field
          SlideInUp(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 500.ms,
            duration: 500.ms,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.blueGrey[900],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 20),
          // Email Field
          SlideInUp(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 600.ms,
            duration: 500.ms,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.blueGrey[900],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 20),
          // Message Field
          SlideInUp(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 700.ms,
            duration: 500.ms,
            child: TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Message',
                labelStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.blueGrey[900],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your message';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 30),
          // Submit Button
          ZoomIn(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 800.ms,
            duration: 500.ms,
            child: ElevatedButton(
              onPressed: () {
                // Validate and submit form
                if (_formKey.currentState!.validate()) {
                  // Implement form submission logic
                  print("Message Sent");
                }
              },
              child: Text("Send Message"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white70,
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
