import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/view_cv_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  Future<void> openLink(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      webOnlyWindowName: '_blank', // new tab
    )) {
      throw Exception('Could not open $url');
    }
  }

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
                          'assets/images/Profile.jpeg',
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
              Row(
                children: [
                  ViewCVButton(),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () =>
                        openLink('https://github.com/abdallahnassarr'),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.white70, width: 0.8),
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'GitHub',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () =>
                        openLink('https://www.linkedin.com/in/abdallahnassar/'),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.white70, width: 0.8),
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Text(
                      'LinkedIn',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        MediaQuery.of(context).size.width > 800
            ? Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/Profile.jpeg'),
                ),
              )
            : Container(),
      ],
    );
  }
}
