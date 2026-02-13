import 'package:flutter/material.dart';
import 'package:potfolio/sections/project_section.dart';

import 'about_section.dart';
import 'contact_section.dart';
import 'experience_section.dart';
import 'hero_section.dart';
import 'skills_section.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        children: [
          HeroSection(),
          SizedBox(height: 60),
          AboutSection(),
          SizedBox(height: 60),
          SkillsSection(),
          SizedBox(height: 60),
          ExperienceSection(),
          SizedBox(height: 60),
          ProjectsSection(),
          SizedBox(height: 60),
          ContactSection(),
        ],
      ),
    );
  }
}
