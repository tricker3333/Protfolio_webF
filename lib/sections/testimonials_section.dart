import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/testimonial_card.dart';

class TestimonialsSection extends StatelessWidget {
  final List<Map<String, String>> testimonials = [
    {
      'name': 'Jane Smith',
      'feedback': "John's work is absolutely phenomenal! Highly recommended.",
      'image': 'assets/imgs/client1.jpg',
    },
    {
      'name': 'Dave White',
      'feedback': "Professional and timely delivery. Great quality of work.",
      'image': 'assets/imgs/client2.jpg',
    },
    {
      'name': 'Sarah Connor',
      'feedback': "Innovative designs and attention to detail. Simply amazing.",
      'image': 'assets/imgs/client3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 1200;
    final isMediumScreen = MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width <= 1200;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isLargeScreen ? 60 : (isMediumScreen ? 40 : 20), vertical: isLargeScreen ? 80 : (isMediumScreen ? 60 : 40)),
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
          Text(
            "What My Clients Say",
            style: TextStyle(
              color: Colors.white,
              fontSize: isLargeScreen ? 30 : (isMediumScreen ? 26 : 22),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
          SizedBox(height: 20),
          // Testimonials Grid
          LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = constraints.maxWidth > 1200 ? 3 : (constraints.maxWidth > 800 ? 2 : 1);

              return GridView.builder(
                itemCount: testimonials.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return TestimonialCard(
                    name: testimonials[index]['name']!,
                    feedback: testimonials[index]['feedback']!,
                    image: testimonials[index]['image']!,
                  ).animate().fadeIn(delay: 200.ms, duration: 500.ms);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
