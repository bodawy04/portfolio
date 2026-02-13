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
              MediaQuery.of(context).size.width < 800
                  ? Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(
                          'assets/images/Profile.JPG',
                        ),
                      ),
                    )
                  : Container(),
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
        MediaQuery.of(context).size.width > 800
            ? Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/Profile.JPG'),
                ),
              )
            : Container(),
      ],
    );
  }
}
