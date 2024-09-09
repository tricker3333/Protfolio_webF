import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../widgets/client_logo.dart';

class ClientsSection extends StatelessWidget {
  final List<String> clientLogos = [
    'assets/imgs/client1.jpg',
    'assets/imgs/client2.jpg',
    'assets/imgs/client3.jpg',
    'assets/imgs/client4.jpg',
    'assets/imgs/client5.jpg',
    'assets/imgs/client6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      color: Colors.blueGrey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            "My Clients",
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width > 1200 ? 30 : (MediaQuery.of(context).size.width > 800 ? 26 : 22),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(height: 20),
          // Subtitle
          SlideInUp(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 200.ms, duration: 500.ms,
            child: Text(
              "Trusted by leading companies worldwide.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: MediaQuery.of(context).size.width > 1200 ? 18 : (MediaQuery.of(context).size.width > 800 ? 16 : 14),
              ),
            ),
          ),
          SizedBox(height: 40),
          // Clients Logos Grid
          LayoutBuilder(
            builder: (context, constraints) {
              final isLargeScreen = constraints.maxWidth > 1200;
              final isMediumScreen = constraints.maxWidth > 800 && constraints.maxWidth <= 1200;
              final crossAxisCount = isLargeScreen ? 4 : (isMediumScreen ? 3 : 2);

              return GridView.builder(
                itemCount: clientLogos.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return ClientLogo(
                    logo: clientLogos[index],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
