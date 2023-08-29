import 'package:flutter/material.dart';

void main() {
  runApp(PatientDetailsForm());
}

class PatientDetailsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Details Form',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Patient Details Form'),
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
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png', // Replace with your own logo image asset
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Personal Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Illness and Medication',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Illness'),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Previous Medications'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Precautions and Instructions',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Precautions'),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Instructions'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle form submission and download logic here
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Form Downloaded'),
                                      content: Text(
                                          'Thank you for submitting the form.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Close'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text('Download Form'),
                            ),
                          ),
                          SizedBox(height: 20),
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
