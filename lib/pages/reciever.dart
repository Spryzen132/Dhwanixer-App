import 'package:flutter/material.dart';

class ReceiverPage extends StatefulWidget {
  const ReceiverPage({super.key});

  @override
  State<ReceiverPage> createState() => _ReceiverPageState();
}

class _ReceiverPageState extends State<ReceiverPage> {
  // Connected senders
  // Empty until backend is implemented.
  List<String> senders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Receiver"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "This device will receive audio from sender devices.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Connected Senders",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: senders.isEmpty
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
                            Icons.speaker_group,
                            size: 80,
                            color: Colors.grey,
                          ),

                          SizedBox(height: 20),

                          Text(
                            "No Sender Connected",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "Waiting for sender devices...",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
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
                      itemCount: senders.length,

                      itemBuilder: (context, index) {

                        return Card(
                          child: ListTile(

                            leading: const Icon(
                              Icons.phone_android,
                            ),

                            title: Text(
                              senders[index],
                            ),

                            subtitle: const Text(
                              "Connected",
                            ),

                            trailing: IconButton(
                              icon: const Icon(
                                Icons.close,
                              ),
                              onPressed: () {},
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

                icon: const Icon(Icons.wifi),

                label: const Text(
                  "Start Listening",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Receiver backend coming soon.",
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