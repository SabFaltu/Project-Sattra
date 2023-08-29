// ignore_for_file: prefer_const_constructors

import '/widgets/page.dart';
import '/screens/module/people.dart';
import 'package:fluent_ui/fluent_ui.dart';

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
    int crossAxisCounted = (screenWidth ~/ 250).clamp(1, 6);

    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: Text('Patients'),
        commandBar: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          primaryItems: [
            ...patientCommands,
          ],
        ),
      ),
      children: [
        GridView.builder(
          shrinkWrap: true,
          itemCount:
              15, // Change this to the number of cards you want to display
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCounted,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 9.0,
            //childAspectRatio: 1.3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return PatientWidget();
          },
        ),
      ],
    );
  }
}
