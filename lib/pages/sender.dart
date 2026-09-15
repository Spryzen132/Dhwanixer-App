import 'package:flutter/material.dart';

class SenderPage extends StatefulWidget {
  const SenderPage({super.key});

  @override
  State<SenderPage> createState() => _SenderPageState();
}

class _SenderPageState extends State<SenderPage> {
  // Receiver list
  // Empty for now because backend is not implemented.
  List<String> receivers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sender"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "This device will send its audio to a receiver.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Available Receivers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: receivers.isEmpty
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1F1F1F),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.wifi_find,
                            size: 80,
                            color: Colors.grey,
                          ),

                          SizedBox(height: 20),

                          Text(
                            "No Receivers Found",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "Press Scan to search for nearby receivers.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: 8),

                          Text(
                            "(Backend not implemented yet)",
                            style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),

                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: receivers.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.computer),
                            title: Text(receivers[index]),
                            trailing: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Connect"),
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: FilledButton.icon(
                icon: const Icon(Icons.search),
                label: const Text(
                  "Scan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Scanning feature will be added later.",
                      ),
                    ),
                  );

                },
              ),
            ),

            const SizedBox(height: 15),

            const Center(
              child: Text(
                "Version 0.1",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}