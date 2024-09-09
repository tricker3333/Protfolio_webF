import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  ServiceCard({required this.title, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLargeScreen = constraints.maxWidth > 600;
        return Container(
          padding: EdgeInsets.all(isLargeScreen ? 25 : 15),
          decoration: BoxDecoration(
            color: Colors.blueGrey[800],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              Icon(icon, color: Colors.blueAccent, size: isLargeScreen ? 40 : 30),
              SizedBox(height: isLargeScreen ? 20 : 15),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isLargeScreen ? 22 : 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isLargeScreen ? 10 : 5),
              Text(
                description,
                style: TextStyle(color: Colors.white70, fontSize: isLargeScreen ? 16 : 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
