import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                Text(
                  "10 Years Experience in Web Development",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ).animate().fadeIn(delay: 100.ms, duration: 500.ms),
                SizedBox(height: 20),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.",
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ).animate().fadeIn(delay: 300.ms, duration: 500.ms),
                SizedBox(height: 40),
                // Experience Timeline
                ExperienceTimeline(
                  year: "2010 - 2014",
                  company: "ABC Company",
                  description: "Junior Developer - Worked on frontend technologies.",
                ).animate().fadeIn(delay: 500.ms, duration: 500.ms),
                ExperienceTimeline(
                  year: "2014 - 2016",
                  company: "X Software Company",
                  description: "Mid-level Developer - Full stack development.",
                ).animate().fadeIn(delay: 600.ms, duration: 500.ms),
                ExperienceTimeline(
                  year: "2017 - Now",
                  company: "Freelancer",
                  description: "Senior Developer - Leading multiple projects.",
                ).animate().fadeIn(delay: 700.ms, duration: 500.ms),
              ],
            ),
          ),
          SizedBox(width: 60),
          // Skills and Profile Picture
          Expanded(
            child: Column(
              children: [
                // Profile Picture
                Container(
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
                ).animate().fadeIn(delay: 800.ms, duration: 500.ms),
                SizedBox(height: 30),
                // Skill Bars
                SkillBar(skill: "Python", percentage: 0.8).animate().fadeIn(delay: 900.ms, duration: 500.ms),
                SkillBar(skill: "ReactJS", percentage: 0.7).animate().fadeIn(delay: 1000.ms, duration: 500.ms),
                SkillBar(skill: "Laravel", percentage: 0.6).animate().fadeIn(delay: 1100.ms, duration: 500.ms),
                SkillBar(skill: "Vue", percentage: 0.7).animate().fadeIn(delay: 1200.ms, duration: 500.ms),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
