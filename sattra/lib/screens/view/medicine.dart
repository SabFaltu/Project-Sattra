import 'dart:math';

import '/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class MedicationPage extends StatefulWidget {
  const MedicationPage({Key? key}) : super(key: key);

  @override
  State<MedicationPage> createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> with PageMixin {
  bool firstChecked = false;
  bool firstDisabled = false;
  bool? secondChecked = false;
  bool secondDisabled = false;
  bool iconDisabled = false;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: const PageHeader(title: Text('Medication')),
      children: [
        const Text(
          'CheckBox controls let the user select a combination of binary options. In contrast, RadioButton controls allow the user to select from mutually exclusive options. The indeterminate state is used to indicate that an option is set for some, but not all, child options. Don\'t allow users to set an indeterminate state directly to indicate a third option.',
        ),
        subtitle(content: const Text('A 2-state Checkbox')),
        Checkbox(
          checked: firstChecked,
          onChanged: firstDisabled
              ? null
              : (value) {
                  setState(() {
                    firstChecked = value!;
                  });
                },
        ),
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            final medicines = [
              'Paracetamol',
              'Ibuprofen',
              'Amoxicillin',
              'Doxycycline',
              'Cephalexin',
              'Metformin',
              'Lisinopril',
              'Losartan',
              'Prednisone',
              'Atorvastatin',
              'Omeprazole',
              'Albuterol',
              'Gabapentin',
              'Hydrochlorothiazide',
              'Meloxicam',
            ];
            return ListTile(
              title: Text(medicines[index % medicines.length]),
            );
          },
        ),
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            final patients = [
              'Patient 1',
              'Patient 2',
              'Patient 3',
              'Patient 4',
              'Patient 5',
              'Patient 6',
              'Patient 7',
              'Patient 8',
              'Patient 9',
              'Patient 10',
              'Patient 11',
              'Patient 12',
              'Patient 13',
              'Patient 14',
              'Patient 15',
            ];
            final medicines = [
              'Paracetamol',
              'Ibuprofen',
              'Amoxicillin',
              'Doxycycline',
              'Cephalexin',
              'Metformin',
              'Lisinopril',
              'Losartan',
              'Prednisone',
              'Atorvastatin',
              'Omeprazole',
              'Albuterol',
              'Gabapentin',
              'Hydrochlorothiazide',
              'Meloxicam',
            ];
            final random = Random();
            final randomMedicine = medicines[random.nextInt(medicines.length)];
            final randomPatient = patients[random.nextInt(patients.length)];
            return ListTile(
              title: Text('Medicine: $randomMedicine'),
              subtitle: Text('Recommended to: $randomPatient'),
            );
          },
        ),
      ],
    );
  }

  final treeViewItems = [
    TreeViewItem(content: const Text('Option 1')),
    TreeViewItem(content: const Text('Option 2')),
    TreeViewItem(content: const Text('Option 3')),
  ];
}
