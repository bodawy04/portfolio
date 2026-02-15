import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewCVButton extends StatelessWidget {
  const ViewCVButton({super.key});

  Future<void> openCV() async {
    if (kIsWeb) {
<<<<<<< HEAD
      final uri = Uri.parse(
        'https://drive.google.com/file/d/1H0zJAPST483ixpk2SLbaXbTBqv8ax7BQ/view?usp=drive_link',
      );
=======
      final uri = Uri.parse('https://drive.google.com/file/d/1H0zJAPST483ixpk2SLbaXbTBqv8ax7BQ/view?usp=drive_link');
>>>>>>> 9b708dbf0f5675ba8c1fd95e172fced4023235f9

      final success = await launchUrl(uri, webOnlyWindowName: '_blank');

      if (!success) {
        throw Exception('Could not open CV');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: openCV,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.white70, width: 0.8),
        backgroundColor: Colors.transparent,
      ),
      child: const Text('View CV', style: TextStyle(color: Colors.white70)),
    );
  }
}
