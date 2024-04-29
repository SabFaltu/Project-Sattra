import '/widgets/page.dart';
import '/screens/module/people.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const kSplitButtonHeight = 32.0;
const kSplitButtonWidth = 36.0;

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  State<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> with PageMixin {
  String filterText = '';
  AccentColor splitButtonColor = Colors.red;
  final splitButtonFlyout = FlyoutController();

  @override
  void dispose() {
    splitButtonFlyout.dispose();
    super.dispose();
  }

  final patientCommands = <CommandBarItem>[
    CommandBarBuilderItem(
      builder: (context, mode, w) => Tooltip(
        message: "Create something new!",
        child: w,
      ),
      wrappedItem: CommandBarButton(
        icon: const Icon(FluentIcons.add),
        label: const Text('New'),
        onPressed: () {},
      ),
    ),
    CommandBarBuilderItem(
      builder: (context, mode, w) => Tooltip(
        message: "Search By Name",
        child: w,
      ),
      wrappedItem: CommandBarButton(
        icon: const Icon(FluentIcons.search),
        label: const Text('Search'),
        onPressed: () {},
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasFluentTheme(context));

    double screenWidth = MediaQuery.of(context).size.width;
    int itemCount = 15; // Default value

    // Dynamically calculate the number of columns based on screen width
    int crossAxisCounted = (screenWidth ~/ 320);

    // Adjust childAspectRatio based on your design needs
    // double childAspectRatio = 0.85; // Adjust this value as needed

    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Patients'),
        commandBar: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          primaryItems: [
            ...patientCommands,
          ],
        ),
      ),
      children: [
        FutureBuilder<Map<String, dynamic>>(
          future: _fetchRandomUserData(itemCount),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Return a loading indicator while fetching data
              return const Center(
                child: ProgressRing(),
              );
            } else if (snapshot.hasError) {
              // Handle error state
              return Text('Error: ${snapshot.error}');
            } else {
              List<dynamic> patients = snapshot.data!['results'];
              return GridView.builder(
                shrinkWrap: true,
                itemCount: patients.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCounted,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 4.0,
                  // childAspectRatio: childAspectRatio,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final patient = patients[index];
                  final name = '${patient['name']['first']} ${patient['name']['last']}';
                  final imageUrl = patient['picture']['large'];
                  final gender = patient['gender'];
                  final age = patient['dob']['age'];
                  return SizedBox(
                    child: Stack(
                      children: [
                        PatientWidget(name: name, imageUrl: imageUrl, gender: gender, age: age),
                        if (snapshot.connectionState == ConnectionState.waiting)
                          const Center(
                            child: ProgressRing(),
                          ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }

  Future<Map<String, dynamic>> _fetchRandomUserData(int itemCount) async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/?results=$itemCount'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
