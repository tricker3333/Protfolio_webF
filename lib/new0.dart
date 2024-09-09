// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
//
// class PortfolioWebsite0 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[900],
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             headerSection().animate().fadeIn(duration: 1.seconds),
//             experienceSection().animate().fadeIn(duration: 1.seconds),
//             portfolioSection().animate().fadeIn(duration: 1.seconds),
//             servicesSection().animate().fadeIn(duration: 1.seconds),
//             footerSection().animate().fadeIn(duration: 1.seconds),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget headerSection() {
//     return Container(
//       padding: EdgeInsets.all(40),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.blueGrey[800]!, Colors.blueGrey[600]!],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Hello!",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 40,
//               fontWeight: FontWeight.w300,
//               fontFamily: 'Roboto',
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "I'm John Doe",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 60,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Roboto',
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "Full Stack Web Developer",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Roboto',
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget experienceSection() {
//     return Container(
//       padding: EdgeInsets.all(40),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey[800],
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "10 Years Experience On Web Development.",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Roboto',
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                   style: TextStyle(color: Colors.white70, fontSize: 18),
//                 ),
//                 SizedBox(height: 40),
//                 experienceTimeline(
//                   year: "2010 - 2014",
//                   company: "ABC Company",
//                   description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//                 experienceTimeline(
//                   year: "2014 - 2016",
//                   company: "X Software Company",
//                   description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//                 experienceTimeline(
//                   year: "2017 - Now",
//                   company: "Freelancer",
//                   description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(width: 40),
//           Expanded(
//             child: Column(
//               children: [
//                 Container(
//                   width: 150,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black45,
//                         blurRadius: 10,
//                         offset: Offset(0, 10),
//                       ),
//                     ],
//                     image: DecorationImage(
//                       image: AssetImage('assets/imgs/profile.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 skillBar(skill: "Python", percentage: 0.8),
//                 skillBar(skill: "ReactJS", percentage: 0.7),
//                 skillBar(skill: "Laravel", percentage: 0.6),
//                 skillBar(skill: "Vue", percentage: 0.7),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget experienceTimeline({required String year, required String company, required String description}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Row(
//         children: [
//           Icon(Icons.brightness_1, color: Colors.white, size: 15),
//           SizedBox(width: 20),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   year,
//                   style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   company,
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   description,
//                   style: TextStyle(color: Colors.white70),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget skillBar({required String skill, required double percentage}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             skill,
//             style: TextStyle(color: Colors.white, fontSize: 18),
//           ),
//           SizedBox(height: 5),
//           LinearProgressIndicator(
//             value: percentage,
//             backgroundColor: Colors.white24,
//             color: Colors.white,
//             minHeight: 10,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget portfolioSection() {
//     return Container(
//       padding: EdgeInsets.all(40),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey[800],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Portfolio",
//             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
//           ),
//           SizedBox(height: 20),
//           Text(
//             "I Served For More Than 1000 Customers",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ),
//           SizedBox(height: 20),
//           GridView.count(
//             crossAxisCount: 3,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 20,
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             children: List.generate(6, (index) {
//               return Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   image: DecorationImage(
//                     image: AssetImage('assets/imgs/portfolio$index.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black45,
//                       blurRadius: 10,
//                       offset: Offset(0, 5),
//                     ),
//                   ],
//                 ),
//               );
//             }),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget servicesSection() {
//     return Container(
//       padding: const EdgeInsets.all(40),
//       color: Colors.blueGrey[900],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "My Services",
//             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             "I'm Available For Freelance Work",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ),
//           const SizedBox(height: 20),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 serviceCard(
//                   icon: Icons.phone_android,
//                   title: "App Development",
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//                 ).animate().fadeIn(duration: 1.seconds).slideX(delay: 200.milliseconds),
//                 SizedBox(width: 20), // Added spacing between cards
//                 serviceCard(
//                   icon: Icons.web,
//                   title: "Web APP",
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//                 ).animate().fadeIn(duration: 1.seconds).slideX(delay: 400.milliseconds),
//                 SizedBox(width: 20), // Added spacing between cards
//                 serviceCard(
//                   icon: Icons.wordpress,
//                   title: "WordPress Development",
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//                 ).animate().fadeIn(duration: 1.seconds).slideX(delay: 600.milliseconds),
//                 SizedBox(width: 20), // Added spacing between cards
//                 serviceCard(
//                   icon: Icons.code,
//                   title: "Front-end Development",
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//                 ).animate().fadeIn(duration: 1.seconds).slideX(delay: 800.milliseconds),
//               ],
//             ),
//           ),
//           const SizedBox(height: 40),
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 // Hire Me button action
//               },
//               child: const Text("Hire Me!"),
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.blueGrey[700],
//                 padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//                 textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget serviceCard({required IconData icon, required String title, required String description}) {
//     return Container(
//       width: 250,
//       margin: const EdgeInsets.symmetric(horizontal: 10),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey[700],
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         children: [
//           Icon(icon, color: Colors.white, size: 50),
//           const SizedBox(height: 20),
//           Text(
//             title,
//             style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 10),
//           Text(
//             description,
//             style: const TextStyle(color: Colors.white70),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget footerSection() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       color: Colors.blueGrey[900],
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             "© 2024 John Doe",
//             style: TextStyle(color: Colors.white70),
//           ),
//           Row(
//             children: [
//               footerIcon(Icons.facebook),
//               footerIcon(Icons.facebook),
//               footerIcon(Icons.facebook),
//               footerIcon(Icons.facebook),
//             ],
//           ),
//         ],
//       ),
//     ).animate().fadeIn(duration: 1.seconds);
//   }
//
//   Widget footerIcon(IconData icon) {
//     return IconButton(
//       icon: Icon(icon, color: Colors.white),
//       onPressed: () {
//         // Footer icon action
//       },
//     );
//   }
// }