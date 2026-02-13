import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewCVButton extends StatelessWidget {
  const ViewCVButton({super.key});

  Future<void> openCV() async {
    if (kIsWeb) {
      final uri = Uri.parse('https://drive.google.com/file/d/1H0zJAPST483ixpk2SLbaXbTBqv8ax7BQ/view?usp=drive_link');

      final success = await launchUrl(uri, webOnlyWindowName: '_blank');

      if (!success) {
        throw Exception('Could not open CV');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: openCV, child: const Text('View CV'));
  }
}
