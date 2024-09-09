import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLargeScreen = constraints.maxWidth > 1200;
        final isMediumScreen =
            constraints.maxWidth <= 1200 && constraints.maxWidth > 800;
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
              ZoomIn(
                globalKey: GlobalKey(),
                repeat: true,
                  delay: 100.ms,
                duration: 500.ms,
                child: Text(
                  "My Services",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isLargeScreen ? 30 : (isMediumScreen ? 24 : 18),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Subtitle
              FadeIn(
                repeat: true,
                  delay: 300.ms,
                duration: 500.ms,
                globalKey: GlobalKey(),
                child: Text(
                  "I offer a wide range of services to meet your needs.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: isLargeScreen ? 18 : (isMediumScreen ? 16 : 14),
                  ),
                ),
              ),
              SizedBox(height: 40),
              // Services Grid
              GridView.builder(
                itemCount: services.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing:
                      isLargeScreen ? 30 : (isMediumScreen ? 20 : 10),
                  mainAxisSpacing:
                      isLargeScreen ? 30 : (isMediumScreen ? 20 : 10),
                ),
                itemBuilder: (context, index) {
                  return ZoomOut(
                    globalKey: GlobalKey(),
                    repeat: true,
                  delay: (200 + index * 100).ms,
                    duration: 500.ms,
                    child: ServiceCard(
                      title: services[index]['title']!,
                      description: services[index]['description']!,
                      icon: services[index]['icon']!,
                    ),
                  );
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
      'description':
          'Develop complete web solutions using modern technologies.',
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
