import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../widgets/experience_timeline.dart';
import '../widgets/skill_bar.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 80),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Experience Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Experience Title
                FadeIn(
                  repeat: true,
                  delay: 100.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: Text(
                    "10 Years Experience in Web Development",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Experience Description
                 FadeIn(
                  repeat: true,
                  delay: 300.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ),
                SizedBox(height: 40),
                // Experience Timeline
                SlideInRight(
                  repeat: true,
                  delay: 500.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: ExperienceTimeline(
                    year: "2010 - 2014",
                    company: "ABC Company",
                    description: "Junior Developer - Worked on frontend technologies.",
                  ),
                ),
                SlideInRight(
                  repeat: true,
                  delay: 600.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: ExperienceTimeline(
                    year: "2014 - 2016",
                    company: "X Software Company",
                    description: "Mid-level Developer - Full stack development.",
                  ),
                ),
                SlideInRight(
                  repeat: true,
                  delay: 700.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: ExperienceTimeline(
                    year: "2017 - Now",
                    company: "Freelancer",
                    description: "Senior Developer - Leading multiple projects.",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 60),
          // Skills and Profile Picture
          Expanded(
            child: Column(
              children: [
                // Profile Picture
                ZoomIn(
                  repeat: true,
                  delay: 800.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/imgs/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // Skill Bars
                SlideInRight(
                  repeat: true,
                  delay: 900.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: SkillBar(skill: "Python", percentage: 0.8),
                ),
                SlideInRight(
                  repeat: true,
                  delay: 1000.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: SkillBar(skill: "ReactJS", percentage: 0.7),
                ),
                SlideInRight(
                  repeat: true,
                  delay: 1100.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: SkillBar(skill: "Laravel", percentage: 0.6),
                ),
                SlideInRight(
                  repeat: true,
                  delay: 1200.ms,
                  duration: 500.ms,
                  globalKey: GlobalKey(),
                  child: SkillBar(skill: "Vue", percentage: 0.7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
