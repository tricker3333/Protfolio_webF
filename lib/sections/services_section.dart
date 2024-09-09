import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLargeScreen = constraints.maxWidth > 1200;
        final isMediumScreen = constraints.maxWidth <= 1200 && constraints.maxWidth > 800;
        final crossAxisCount = isLargeScreen ? 3 : (isMediumScreen ? 2 : 1);

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: isLargeScreen ? 60 : (isMediumScreen ? 40 : 20),
            vertical: isLargeScreen ? 80 : (isMediumScreen ? 60 : 40),
          ),
          color: Colors.blueGrey[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section Title
              Text(
                "My Services",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isLargeScreen ? 30 : (isMediumScreen ? 24 : 18),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
              SizedBox(height: 20),
              // Subtitle
              Text(
                "I offer a wide range of services to meet your needs.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: isLargeScreen ? 18 : (isMediumScreen ? 16 : 14),
                ),
              ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
              SizedBox(height: 40),
              // Services Grid
              GridView.builder(
                itemCount: services.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: isLargeScreen ? 30 : (isMediumScreen ? 20 : 10),
                  mainAxisSpacing: isLargeScreen ? 30 : (isMediumScreen ? 20 : 10),
                ),
                itemBuilder: (context, index) {
                  return ServiceCard(
                    title: services[index]['title']!,
                    description: services[index]['description']!,
                    icon: services[index]['icon']!,
                  ).animate().fadeIn(delay: (100 + index * 100).ms, duration: 500.ms);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  final List<Map<String, dynamic>> services = [
    {
      'title': 'UI/UX Design',
      'description': 'Design stunning and user-friendly interfaces.',
      'icon': Icons.design_services,
    },
    {
      'title': 'Full Stack Development',
      'description': 'Develop complete web solutions using modern technologies.',
      'icon': Icons.web,
    },
    {
      'title': 'Consulting',
      'description': 'Provide expert advice and solutions for your web needs.',
      'icon': Icons.business_center,
    },
    {
      'title': 'Mobile App Development',
      'description': 'Create seamless mobile experiences for iOS and Android.',
      'icon': Icons.phone_iphone,
    },
    {
      'title': 'SEO Optimization',
      'description': 'Improve your website ranking on search engines.',
      'icon': Icons.search,
    },
    {
      'title': 'Cloud Services',
      'description': 'Leverage cloud platforms for scalable applications.',
      'icon': Icons.cloud,
    },
  ];
}
