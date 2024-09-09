import 'package:flutter/material.dart';

class ClientLogo extends StatelessWidget {
  final String logo;

  ClientLogo({required this.logo});

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 1200;
    final isMediumScreen = MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width <= 1200;

    return Container(
      padding: EdgeInsets.all(isLargeScreen ? 20 : (isMediumScreen ? 15 : 10)),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: isLargeScreen ? 10 : (isMediumScreen ? 8 : 6),
            offset: Offset(0, isLargeScreen ? 5 : (isMediumScreen ? 4 : 3)),
          ),
        ],
      ),
      child: Image.asset(
        logo,
        fit: BoxFit.contain,
        width: isLargeScreen ? 120 : (isMediumScreen ? 100 : 80),
        height: isLargeScreen ? 120 : (isMediumScreen ? 100 : 80),
      ),
    );
  }
}
