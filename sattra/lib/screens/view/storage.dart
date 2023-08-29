import '/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class ToggleSwitchPage extends StatefulWidget {
  const ToggleSwitchPage({Key? key}) : super(key: key);

  @override
  State<ToggleSwitchPage> createState() => _ToggleSwitchPageState();
}

class _ToggleSwitchPageState extends State<ToggleSwitchPage> with PageMixin {
  bool disabled = false;
  bool firstValue = false;
  bool secondValue = true;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('ToggleSwitch'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: [
        const Text(
          'The toggle switch represents a physical switch that allows users to '
          'turn things on or off, like a light switch. Use toggle switch controls '
          'to present users with two mutually exclusive options (such as on/off), '
          'where choosing an option provides immediate results.',
        ),
        subtitle(content: const Text('A simple ToggleSwitch')),
        description(
          content:
              const Text('A toggle switch that can be used to set a value.'),
        ),
      ],
    );
  }
}
