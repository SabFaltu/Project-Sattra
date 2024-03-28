import 'package:flutter/material.dart';

void main() {
<<<<<<< HEAD
  runApp(PatientDetailsForm());
}

class PatientDetailsForm extends StatelessWidget {
=======
  runApp(const PatientDetailsForm());
}

class PatientDetailsForm extends StatelessWidget {
  const PatientDetailsForm({super.key});

>>>>>>> parent of e315cc1 (RandomChanges)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Details Form',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
<<<<<<< HEAD
          title: Text('Patient Details Form'),
=======
          title: const Text('Patient Details Form'),
>>>>>>> parent of e315cc1 (RandomChanges)
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
<<<<<<< HEAD
                        style: TextStyle(
=======
                        style: const TextStyle(
>>>>>>> parent of e315cc1 (RandomChanges)
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
<<<<<<< HEAD
                  SizedBox(height: 20),
=======
                  const SizedBox(height: 20),
>>>>>>> parent of e315cc1 (RandomChanges)
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png', // Replace with your own logo image asset
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
<<<<<<< HEAD
                  SizedBox(height: 20),
=======
                  const SizedBox(height: 20),
>>>>>>> parent of e315cc1 (RandomChanges)
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
<<<<<<< HEAD
                          Text(
=======
                          const Text(
>>>>>>> parent of e315cc1 (RandomChanges)
                            'Personal Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
<<<<<<< HEAD
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Name'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Age'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Sex'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Weight'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Height'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Email'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Phone No'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Address'),
                          ),
                          SizedBox(height: 20),
=======
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
>>>>>>> parent of e315cc1 (RandomChanges)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
<<<<<<< HEAD
                                    Text(
=======
                                    const Text(
>>>>>>> parent of e315cc1 (RandomChanges)
                                      'Illness and Medication',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
<<<<<<< HEAD
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Illness'),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
=======
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      decoration:
                                          const InputDecoration(labelText: 'Illness'),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
>>>>>>> parent of e315cc1 (RandomChanges)
                                          labelText: 'Previous Medications'),
                                    ),
                                  ],
                                ),
                              ),
<<<<<<< HEAD
                              SizedBox(width: 20),
=======
                              const SizedBox(width: 20),
>>>>>>> parent of e315cc1 (RandomChanges)
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
<<<<<<< HEAD
                                    Text(
=======
                                    const Text(
>>>>>>> parent of e315cc1 (RandomChanges)
                                      'Precautions and Instructions',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
<<<<<<< HEAD
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Precautions'),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
=======
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Precautions'),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
>>>>>>> parent of e315cc1 (RandomChanges)
                                          labelText: 'Instructions'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
<<<<<<< HEAD
                          SizedBox(height: 40),
=======
                          const SizedBox(height: 40),
>>>>>>> parent of e315cc1 (RandomChanges)
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle form submission and download logic here
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
<<<<<<< HEAD
                                      title: Text('Form Downloaded'),
                                      content: Text(
=======
                                      title: const Text('Form Downloaded'),
                                      content: const Text(
>>>>>>> parent of e315cc1 (RandomChanges)
                                          'Thank you for submitting the form.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
<<<<<<< HEAD
                                          child: Text('Close'),
=======
                                          child: const Text('Close'),
>>>>>>> parent of e315cc1 (RandomChanges)
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
<<<<<<< HEAD
                              child: Text('Download Form'),
                            ),
                          ),
                          SizedBox(height: 20),
=======
                              child: const Text('Download Form'),
                            ),
                          ),
                          const SizedBox(height: 20),
>>>>>>> parent of e315cc1 (RandomChanges)
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
