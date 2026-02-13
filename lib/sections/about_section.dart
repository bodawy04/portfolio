import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Dedicated student who is passionate about software development. I strive to"
      " deepen my expertise through continuous learning and actively exploring"
      " different areas within the field to identify and cultivate my true interests."
      " Ready for the opportunity that will make me able to apply my programming skills"
      " and tend to learn more in different fields to develop my skills.",
      style: TextStyle(fontSize: 16, height: 1.6),
    );
  }
}
