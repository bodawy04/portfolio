import 'package:flutter/material.dart';

import '../widgets/view_cv_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Abdallah Ahmed Elsayed",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                "Software Developer",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(height: 24),
              ViewCVButton(),
            ],
          ),
        ),
        MediaQuery.of(context).size.width > 600
            ? Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(200),
                  child: Image.asset('assets/images/Profile.JPG', scale: 3),
                ),
              )
            : Container(),
      ],
    );
  }
}
