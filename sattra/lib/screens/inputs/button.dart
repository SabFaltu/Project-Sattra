// ignore_for_file: prefer_const_constructors

import '/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

const kSplitButtonHeight = 32.0;
const kSplitButtonWidth = 36.0;

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> with PageMixin {
  bool simpleDisabled = false;
  bool filledDisabled = false;
  bool iconDisabled = false;
  bool toggleDisabled = false;
  bool toggleState = false;
  bool splitButtonDisabled = false;
  bool radioButtonDisabled = false;
  int radioButtonSelected = -1;

  AccentColor splitButtonColor = Colors.red;
  final splitButtonFlyout = FlyoutController();

  @override
  void dispose() {
    splitButtonFlyout.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: const PageHeader(title: Text('Button')),
      children: [
        const Text(
          'The Button control provides a Click event to respond to user input from a touch, mouse, keyboard, stylus, or other input device. You can put different kinds of content in a button, such as text or an image, or you can restyle a button to give it a new look.',
        ),
        subtitle(content: const Text('A simple button with text content')),
        description(
          content: const Text('A button that initiates an immediate action.'),
        ),
        Button(
          onPressed: simpleDisabled ? null : () {},
          child: const Text('Button'),
        ),
      ],
    );
  }
}
