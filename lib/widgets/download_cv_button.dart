import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({super.key});

  Future<void> openCVWeb() async {
    final uri = Uri.parse('/assets/pdf/AbdallahCV.pdf');
    if (!await launchUrl(uri)) {
      throw Exception('Could not open CV');
    }
  }

  Future<void> openCVMobile(BuildContext context) async {
    final bytes = await rootBundle.load('assets/pdf/AbdallahCV.pdf');

    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/AbdallahCV.pdf');

    await file.writeAsBytes(bytes.buffer.asUint8List());
    await OpenFilex.open(file.path);
  }

  Future<void> openCV(BuildContext context) async {
    if (kIsWeb) {
      await openCVWeb();
    } else {
      await openCVMobile(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        openCV(context);
      },
      icon: const Icon(Icons.download),
      label: const Text("Download CV"),
    );
  }
}
