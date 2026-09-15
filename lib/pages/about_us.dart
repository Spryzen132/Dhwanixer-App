import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Widget creditTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 8),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }

  Widget creditText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }

  Widget divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Divider(
        thickness: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("About"),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(24),

        child: Column(

          children: [

            const SizedBox(height: 30),

            const Icon(
              Icons.graphic_eq,
              size: 100,
              color: Colors.deepPurpleAccent,
            ),

            const SizedBox(height: 30),

            const Text(
              '"WE??"\n\n"There\'s no weeee!!!"',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "- Great Monk DB",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),

            divider(),

            const Text(
              "DHWANIXER",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Version 0.1",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            const Text(
              "The Undisturbed Audio Ecosystem",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),

            divider(),

            creditTitle("Developer"),
            creditText("DB"),

            divider(),

            creditTitle("Original Idea"),
            creditText("DB"),

            divider(),

            creditTitle("Project Architect"),
            creditText("DB"),

            divider(),

            creditTitle("Frontend Developer"),
            creditText("DB"),

            divider(),

            creditTitle("Backend Developer"),
            creditText("Future DB"),

            divider(),

            creditTitle("UI Designer"),
            creditText("DB"),

            divider(),

            creditTitle("UX Designer"),
            creditText("DB"),

            divider(),

            creditTitle("Systems Engineer"),
            creditText("DB"),

            divider(),

            creditTitle("Audio Engineer"),
            creditText("Future DB"),

            divider(),

            creditTitle("Network Engineer"),
            creditText("Future DB"),

            divider(),

            creditTitle("Testing Department"),
            creditText("DB"),

            divider(),

            creditTitle("Quality Assurance"),
            creditText("Still DB"),

            divider(),

            creditTitle("Research & Development"),
            creditText("DB"),

            divider(),

            creditTitle("Motivation"),
            creditText("DB"),

            divider(),

            creditTitle("Debugger"),
            creditText("ChatGPT"),

            divider(),

            creditTitle("Technical Support"),
            creditText("Stack Overflow"),

            divider(),

            creditTitle("Documentation"),
            creditText("Flutter Docs\n\nDart Docs"),

            divider(),

            creditTitle("Special Thanks"),
            creditText(
              "Flutter\n\n"
              "Dart\n\n"
              "Open Source Community\n\n"
              "Every developer who answered\n"
              "a random question online.",
            ),

            divider(),

            creditTitle("Dedicated To"),
            creditText(
              "Everyone who got tired of\n"
              "switching headphones\n"
              "between their laptop\n"
              "and phone.",
            ),

            divider(),

            creditTitle("Mission"),
            creditText(
              "One Headset.\n\n"
              "Every Device.\n\n"
              "Zero Interruptions.",
            ),

            divider(),

            const Text(
              "Thank you\nfor using",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "DHWANIXER",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),

            divider(),

            const Text(
              "Made with curiosity,\n"
              "countless experiments,\n"
              "and one very stubborn developer.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "© 2026\n\nAll rights reserved.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 60),

          ],
        ),
      ),
    );
  }
}