import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  Future<void> sendEmail({
    required String name,
    required String email,
    required String message,
  }) async {
    const serviceId = 'service_r1eb5f7';
    const templateId = 'template_vm2aisw';
    const publicKey = 'zHyv5cU7MG8wjjC9k';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'from_name': name,
          'from_email': email,
          'message': message,
        },
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send email');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 0.8),
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        padding: EdgeInsets.all(20),
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (value) =>
                        value!.isEmpty ? 'Enter your name' : null,
                  ),
                  const SizedBox(height: 12),

                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) =>
                        value!.isEmpty ? 'Enter your email' : null,
                  ),
                  const SizedBox(height: 12),

                  TextFormField(
                    controller: messageController,
                    decoration: const InputDecoration(labelText: 'Message'),
                    maxLines: 4,
                    validator: (value) =>
                        value!.isEmpty ? 'Enter a message' : null,
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await sendEmail(
                          name: nameController.text,
                          email: emailController.text,
                          message: messageController.text,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Message sent successfully!'),
                          ),
                        );
                      }
                    },
                    child: const Text('Send Message'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
