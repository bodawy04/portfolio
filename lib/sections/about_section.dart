import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Personal Profile", style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),
        Text(
          "Dedicated student who is passionate about software engineering and experienced in Flutter development. "
          "I strive to deepen my expertise through continuous learning and actively exploring different areas "
          "within the field to identify and cultivate my true interests. "
          "Ready for the opportunity that will make me able to apply my programming skills and "
          "tend to learn more in different fields to develop my skills.",
          style: TextStyle(fontSize: 16, height: 1.6),
        ),
      ],
    );
  }
}
