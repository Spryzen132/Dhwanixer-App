import 'package:flutter/material.dart';
import 'sender.dart';
import 'reciever.dart';
import 'about_us.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =========================
      // App Bar
      // =========================
      appBar: AppBar(
        title: const Text("Dhwanixer"),
        centerTitle: true,
      ),

      // =========================
      // Navigation Drawer
      // =========================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(
                    Icons.graphic_eq,
                    color: Colors.white,
                    size: 60,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Dhwanixer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.devices),
              title: const Text("Devices"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.tune),
              title: const Text("Audio Mixer"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.history),
              title: const Text("Connection History"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Help"),
              onTap: () {},
            ),

           ListTile(
  leading: const Icon(Icons.info_outline),
  title: const Text("About us"),
  onTap: () {
    Navigator.pop(context); // Close drawer

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutPage(),
      ),
    );
  },
),

            const SizedBox(height: 40),

            const Center(
              child: Text(
                "Version 0.1.0",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

          ],
        ),
      ),

      // =========================
      // Main Body
      // =========================
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: [

                //--------------------------------
                // Logo
                //--------------------------------

                const Icon(
                  Icons.graphic_eq,
                  size: 90,
                  color: Colors.deepPurpleAccent,
                ),

                const SizedBox(height: 20),

                //--------------------------------
                // App Name
                //--------------------------------

                const Text(
                  "Dhwanixer",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "The Undisturbed Audio Ecosystem",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 60),

                //--------------------------------
                // Sender Button
                //--------------------------------
                

                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.upload),
                    label: const Text(
                      "SENDER",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   onPressed: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context) => const SenderPage(),
                     ),
                     );
                     },
                  ),
                ),

                const SizedBox(height: 25),

                //--------------------------------
                // Receiver Button
                //--------------------------------

                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.download),
                    label: const Text(
                      "RECEIVER",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const ReceiverPage(),),);},
                  ),
                ),

                const SizedBox(height: 50),

                //--------------------------------
                // Status Card
                //--------------------------------

              ],
            ),
          ),
        ),
      ),
    );
  }
}