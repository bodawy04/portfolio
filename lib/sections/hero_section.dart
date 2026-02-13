import 'package:flutter/material.dart';

import '../widgets/download_cv_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Abdallah Ahmed Elsayed",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Software Developer",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 24),
            DownloadCVButton(),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(200),
          child: Image.asset("images/Profile.JPG", scale: 3),
        ),
      ],
    );
  }
}
