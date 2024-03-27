import 'package:flutter/material.dart';

void main() {
  runApp(const PatientDetailsForm());
}

class PatientDetailsForm extends StatelessWidget {
  const PatientDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Details Form',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Patient Details Form'),
        ),
        body: Container(
          color: Colors.white,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        DateTime.now().toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png', // Replace with your own logo image asset
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Personal Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Name'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Age'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Sex'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Weight'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Height'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Email'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Phone No'),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'Address'),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Illness and Medication',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      decoration:
                                          const InputDecoration(labelText: 'Illness'),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Previous Medications'),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Precautions and Instructions',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Precautions'),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Instructions'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle form submission and download logic here
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('Form Downloaded'),
                                      content: const Text(
                                          'Thank you for submitting the form.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Text('Download Form'),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
