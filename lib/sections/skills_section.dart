import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Dart",
      "Flutter",
      "C#",
      "Entity Framework Core",
      "ASP.NET MVC",
      "ASP.NET Core",
      "ASP.NET Web API",
      "REST APIs",
      "SQL Server",
      "C++",
      "Java",
      "Python",
      "HTML",
      "CSS",
      "Javascript",
      "Power BI",
      "DAX",
      "OOP",
      "SOLID Principles",
      "Data Structure",
      "Design Patterns",
      "Problem Solving",
    ];

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: skills.map((skill) => Chip(label: Text(skill))).toList(),
    );
  }
}
