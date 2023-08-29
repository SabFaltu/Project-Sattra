import '/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> with PageMixin {
  bool firstChecked = false;
  bool firstDisabled = false;
  bool? secondChecked = false;
  bool secondDisabled = false;
  bool iconDisabled = false;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: const PageHeader(title: Text('Checkbox')),
      children: [
        const Text(
          'CheckBox controls let the user select a combination of binary options. In contrast, RadioButton controls allow the user to select from mutually exclusive options. The indeterminate state is used to indicate that an option is set for some, but not all, child options. Don\'t allow users to set an indeterminate state directly to indicate a third option.',
        ),
        subtitle(content: const Text('A 2-state Checkbox')),
        description(
          content:
              const Text('A checkbox that can be either checked or unchecked.'),
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
