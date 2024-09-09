// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
//
// class PortfolioWebsite1 extends StatelessWidget {
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
//             experienceSection().animate().fadeIn(duration: 1.seconds).slideY(),
//             portfolioSection().animate().fadeIn(duration: 1.seconds).slideY(),
//             servicesSection().animate().fadeIn(duration: 1.seconds).slideY(),
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
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
//           SizedBox(height: 10),
//           Text(
//             "I'm John Doe",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 60,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Roboto',
//             ),
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
//           SizedBox(height: 10),
//           Text(
//             "Full Stack Web Developer",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Roboto',
//             ),
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
//           SizedBox(height: 20),
//           Text(
//             "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
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
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
//                 SizedBox(height: 20),
//                 Text(
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                   style: TextStyle(color: Colors.white70, fontSize: 18),
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
//                 SizedBox(height: 40),
//                 experienceTimeline(
//                   year: "2010 - 2014",
//                   company: "ABC Company",
//                   description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
//                 experienceTimeline(
//                   year: "2014 - 2016",
//                   company: "X Software Company",
//                   description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
//                 experienceTimeline(
//                   year: "2017 - Now",
//                   company: "Freelancer",
//                   description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
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
//                 ).animate().fadeIn(duration: 1.seconds).scale(),
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
//           Icon(Icons.brightness_1, color: Colors.white, size: 15).animate().fadeIn(duration: 1.seconds).scale(),
//           SizedBox(width: 20),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   year,
//                   style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
//                 Text(
//                   company,
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
//                 SizedBox(height: 5),
//                 Text(
//                   description,
//                   style: TextStyle(color: Colors.white70),
//                 ).animate().fadeIn(duration: 1.seconds).slideY(),
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
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
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
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
//           SizedBox(height: 20),
//           Text(
//             "I Served For More Than 1000 Customers",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
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
//               ).animate().fadeIn(duration: 1.seconds).scale();
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
//             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
//           ).animate().fadeIn(duration: 1.seconds).slideY(),
//           SizedBox(height: 20),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               serviceCard(
//                 title: "Web Development",
//                 description: "Building responsive and scalable web applications using modern technologies.",
//               ),
//               serviceCard(
//                 title: "Mobile App Development",
//                 description: "Creating high-performance mobile apps for both Android and iOS platforms.",
//               ),
//               serviceCard(
//                 title: "UI/UX Design",
//                 description: "Designing user-friendly and aesthetically pleasing interfaces for web and mobile apps.",
//               ),
//               serviceCard(
//                 title: "Consulting",
//                 description: "Providing expert advice on technology solutions and project management.",
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget serviceCard({required String title, required String description}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Container(
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.blueGrey[800],
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black45,
//               blurRadius: 10,
//               offset: Offset(0, 5),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//             ).animate().fadeIn(duration: 1.seconds).slideY(),
//             SizedBox(height: 10),
//             Text(
//               description,
//               style: TextStyle(color: Colors.white70),
//             ).animate().fadeIn(duration: 1.seconds).slideY(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget footerSection() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       color: Colors.blueGrey[800],
//       child: Center(
//         child: Text(
//           "© 2024 John Doe. All Rights Reserved.",
//           style: TextStyle(color: Colors.white),
//         ).animate().fadeIn(duration: 1.seconds).slideY(),
//       ),
//     );
//   }
// }
