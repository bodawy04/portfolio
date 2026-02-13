import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Contact", style: TextStyle(fontSize: 24)),
        SizedBox(height: 12),
        Text("📧 abdallahnassarr51@gmail.com"),
        Text("🔗 github.com/bodawy04"),
        Text("🔗 linkedin.com/in/abdallahnassar"),
      ],
    );
  }
}
