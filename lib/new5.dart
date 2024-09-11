// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'dart:ui';
//
// class PortfolioWebsite5 extends StatefulWidget {
//   @override
//   State<PortfolioWebsite5> createState() => _PortfolioWebsite5State();
// }
//
// class _PortfolioWebsite5State extends State<PortfolioWebsite5> {
//   bool animate = true;
//   late AnimationController controller;
//   late AnimationController animateController;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[900],
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             FadeIn(
//               // (optional) if true, will not fire the animation on load
//               manualTrigger: true,
//
//               //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//               controller: (controller) => animateController = controller,
//               animate: animate,
//
//               delay: Duration(seconds: 1),
//               duration: Duration(seconds: 1),
//               child: headerSection(),
//             ),
//             ZoomOut(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: SizedBox(height: 40)),
//             Bounce(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: experienceSection()),
//             SizedBox(height: 40),
//             Roulette(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: portfolioSection()),
//             SizedBox(height: 40),
//             ShakeX(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: servicesSection()),
//             SizedBox(height: 40),
//             Swing(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: testimonialsSection()),
//             SizedBox(height: 40),
//             JelloIn(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: contactSection()),
//             SizedBox(height: 40),
//             Flash(
//                 // (optional) if true, will not fire the animation on load
//                 manualTrigger: true,
//
//                 //(optional, but mandatory if you use manualTrigger:true) This callback exposes the AnimationController used for the selected animation. Then you can call animationController.forward() to trigger the animation wherever you like manually.
//                 controller: (controller) => animateController = controller,
//                 animate: animate,
//                 delay: Duration(seconds: 1),
//                 duration: Duration(seconds: 1),
//                 child: footerSection()),
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
//           Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50),
//                 child: Image.asset(
//                   'assets/imgs/profile.jpg',
//                   width: 100,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(width: 20),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Hello!",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 40,
//                       fontWeight: FontWeight.w300,
//                       fontFamily: 'Roboto',
//                     ),
//                   ),
//                   Text(
//                     "I'm John Doe",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 60,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Roboto',
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(height: 20),
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
//             "Crafting beautiful websites with performance and scalability in mind.",
//             style: TextStyle(color: Colors.white70, fontSize: 18),
//           ),
//           SizedBox(height: 40),
//           Row(
//             children: [
//               socialIcon(Icons.linked_camera, "https://linkedin.com"),
//               SizedBox(width: 20),
//               socialIcon(Icons.code, "https://github.com"),
//               SizedBox(width: 20),
//               socialIcon(Icons.email, "mailto:john.doe@example.com"),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget socialIcon(IconData icon, String url) {
//     return GestureDetector(
//       onTap: () => print("Navigating to $url"), // replace with URL launcher
//       child: Container(
//         padding: EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.blueGrey[700],
//         ),
//         child: Icon(icon, color: Colors.white, size: 30),
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
//                   description:
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//                 experienceTimeline(
//                   year: "2014 - 2016",
//                   company: "X Software Company",
//                   description:
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
//                 ),
//                 experienceTimeline(
//                   year: "2017 - Now",
//                   company: "Freelancer",
//                   description:
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
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
//   Widget experienceTimeline(
//       {required String year,
//       required String company,
//       required String description}) {
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
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold),
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
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Roboto'),
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
//   Widget testimonialsSection() {
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
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "What My Clients Say",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               testimonialCard(
//                 name: "Jane Smith",
//                 feedback:
//                     "John's work is absolutely phenomenal! Highly recommended.",
//                 image: 'assets/imgs/client1.jpg',
//               ),
//               testimonialCard(
//                 name: "Dave White",
//                 feedback:
//                     "Professional and timely delivery. Great quality of work.",
//                 image: 'assets/imgs/client2.jpg',
//               ),
//               testimonialCard(
//                 name: "Sarah Connor",
//                 feedback:
//                     "Innovative designs and attention to detail. Simply amazing.",
//                 image: 'assets/imgs/client3.jpg',
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget testimonialCard(
//       {required String name, required String feedback, required String image}) {
//     return Container(
//       width: 300,
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey[900],
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black45,
//             blurRadius: 10,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           CircleAvatar(
//             radius: 40,
//             backgroundImage: AssetImage(image),
//           ),
//           SizedBox(height: 20),
//           Text(
//             name,
//             style: TextStyle(
//                 color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             feedback,
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.white70, fontSize: 16),
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
//             style: TextStyle(
//                 color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
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
//             description:
//                 "Develop complete web solutions using modern technologies.",
//             icon: Icons.web,
//           ),
//           SizedBox(height: 20),
//           serviceCard(
//             title: "Consulting",
//             description:
//                 "Provide expert advice and solutions for your web needs.",
//             icon: Icons.abc,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget serviceCard(
//       {required String title,
//       required String description,
//       required IconData icon}) {
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
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
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
//             style: TextStyle(
//                 color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
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
