// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutterwebsite/new2.dart';
// import 'package:flutterwebsite/new1.dart';
//
//
// class PortfolioWebsite2 extends StatelessWidget {
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
//             SizedBox(height: 40),
//             experienceSection().animate().fadeIn(duration: 1.seconds),
//             SizedBox(height: 40),
//             portfolioSection().animate().fadeIn(duration: 1.seconds),
//             SizedBox(height: 40),
//             servicesSection().animate().fadeIn(duration: 1.seconds),
//             SizedBox(height: 40),
//             contactSection().animate().fadeIn(duration: 1.seconds),
//             SizedBox(height: 40),
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
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black54,
//             blurRadius: 15,
//             offset: Offset(0, 10),
//           ),
//         ],
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
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black54,
//             blurRadius: 15,
//             offset: Offset(0, 10),
//           ),
//         ],
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
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//                 experienceTimeline(
//                   year: "2014 - 2016",
//                   company: "X Software Company",
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//                 experienceTimeline(
//                   year: "2017 - Now",
//                   company: "Freelancer",
//                   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
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
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black54,
//             blurRadius: 15,
//             offset: Offset(0, 10),
//           ),
//         ],
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
//               ).animate().fadeIn(duration: 1.seconds);
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
//           Text(
//             "My Services",
//             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 20),
//           serviceCard(
//             title: "UI/UX Design",
//             description: "Design stunning and user-friendly interfaces.",
//             icon: Icons.design_services,
//           ),
//           SizedBox(height: 20),
//           serviceCard(
//             title: "Full Stack Development",
//             description: "Develop complete web solutions using modern technologies.",
//             icon: Icons.web,
//           ),
//           SizedBox(height: 20),
//           serviceCard(
//             title: "Consulting",
//             description: "Provide expert advice and solutions for your web needs.",
//             icon: Icons.abc,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget serviceCard({required String title, required String description, required IconData icon}) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey[800],
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black54,
//             blurRadius: 10,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.white, size: 40),
//           SizedBox(width: 20),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   description,
//                   style: TextStyle(color: Colors.white70, fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget contactSection() {
//     return Container(
//       padding: EdgeInsets.all(40),
//       color: Colors.blueGrey[800],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Contact Me",
//             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 20),
//           Text(
//             "Feel free to reach out for any inquiries or collaboration opportunities.",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ),
//           SizedBox(height: 20),
//           contactForm(),
//         ],
//       ),
//     );
//   }
//
//   Widget contactForm() {
//     return Form(
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Name',
//               labelStyle: TextStyle(color: Colors.white70),
//               filled: true,
//               fillColor: Colors.blueGrey[900],
//               border: OutlineInputBorder(),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blueAccent),
//               ),
//             ),
//             style: TextStyle(color: Colors.white),
//           ),
//           SizedBox(height: 20),
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Email',
//               labelStyle: TextStyle(color: Colors.white70),
//               filled: true,
//               fillColor: Colors.blueGrey[900],
//               border: OutlineInputBorder(),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blueAccent),
//               ),
//             ),
//             style: TextStyle(color: Colors.white),
//           ),
//           SizedBox(height: 20),
//           TextFormField(
//             maxLines: 4,
//             decoration: InputDecoration(
//               labelText: 'Message',
//               labelStyle: TextStyle(color: Colors.white70),
//               filled: true,
//               fillColor: Colors.blueGrey[900],
//               border: OutlineInputBorder(),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blueAccent),
//               ),
//             ),
//             style: TextStyle(color: Colors.white),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text("Send Message"),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blueAccent,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget footerSection() {
//     return Container(
//       padding: EdgeInsets.all(20),
//       color: Colors.blueGrey[800],
//       child: Center(
//         child: Text(
//           "© 2024 John Doe. All Rights Reserved.",
//           style: TextStyle(color: Colors.white70, fontSize: 16),
//         ),
//       ),
//     );
//   }
// }
