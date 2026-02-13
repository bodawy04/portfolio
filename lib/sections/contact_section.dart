import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Contact", style: TextStyle(fontSize: 24)),
        const SizedBox(height: 12),
        const Text("📧 abdallahnassarr51@gmail.com"),
        TextButton(
          onPressed: () => openLink('https://github.com/bodawy04'),
          child: const Text('GitHub'),
        ),
        TextButton(
          onPressed: () =>
              openLink('https://www.linkedin.com/in/abdallahnassar/'),
          child: const Text('LinkedIn'),
        ),
      ],
    );
  }
}
