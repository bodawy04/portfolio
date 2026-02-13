import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Experience", style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),

        Text(
          "AI Trainer [Remote] – Outlier, San Francisco (February 2025 - August 2025)",
        ),
        Text(
          "• Generating Coding and Math prompts that would cause the model to fail\n"
          "• Evaluating AI models responses according to certain criteria depending on the project\n",
        ),

        Text(
          "Flutter Developer Intern [Remote] – NichePharma, Giza (September 2024 - October 2024)",
        ),
        Text(
          "• Collaborated in the development of TacitApp Pro and TacitApp Time Off\n"
          "• Learned Android and IOS deployment\n"
          "Gained hands-on experience on Flutter real world projects and Github\n",
        ),

        Text(
          "Data Analysis Intern [On-Site] – EFG Holding, Giza (August 2024)",
        ),
        Text(
          "• Learned about Data Analysis basics\n"
          "• Gained Experience on Power BI, Data Cleansing and Data Modeling\n",
        ),

        Text(
          "Software Engineering Intern [Hybrid] – Raya IT, Cairo (July 2024 - August 2024)",
        ),
        Text(
          "• Learned about RPA and how to deal with UiPath and Orchestrator.\n"
          "• Developed Dispatcher and Performer processes and linked between them using queues",
        ),
      ],
    );
  }
}
