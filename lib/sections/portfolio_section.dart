import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

class PortfolioSection extends StatelessWidget {
  final List<String> portfolioImages = [
    'assets/imgs/portfolio0.jpg',
    'assets/imgs/portfolio1.jpg',
    'assets/imgs/portfolio2.jpg',
    'assets/imgs/portfolio3.jpg',
    'assets/imgs/portfolio4.jpg',
    'assets/imgs/portfolio5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
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
                  delay: 100.ms, duration: 500.ms,
            child: Text(
              "Portfolio",
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
            ),
          ),
          SizedBox(height: 20),
          // Subtitle
          FadeIn(
            globalKey: GlobalKey(),
            repeat: true,
                  delay: 100.ms, duration: 500.ms,
            child: Text(
              "I have served more than 1000 customers worldwide.",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          SizedBox(height: 40),
          // Portfolio Grid
          GridView.builder(
            itemCount: portfolioImages.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return ZoomOut(
                globalKey: GlobalKey(),
                  repeat: true,
                  delay: 300.ms, duration: 500.ms,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(portfolioImages[index]),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
