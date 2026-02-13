import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Projects", style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),

        ProjectCard(
          title: "Order Management System",
          description:
              "ASP.NET Core Web API using Onion Architecture, JWT auth, "
              "role-based access, payments, and stock validation.",
          link: "https://github.com/bodawy04/OrderManagementSystem",
        ),

        SizedBox(height: 20),

        ProjectCard(
          title: "Movie App",
          description:
              "Flutter app using BLoC, offline handling, splash screen, "
              "and movie discovery features.",
          link: "https://github.com/bodawy04/MovieApp.git",
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(description),
            SizedBox(height: 8),
            Text(link, style: const TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
