import '/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> with PageMixin {
  bool disabled = false;
  double firstValue = 23.0;
  double verticalValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Slider'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: [
        const Text(
          'Use a Slider when you want your users to be able to set defined, '
          'contiguous values (such as volume or brightness) or a range of discrete '
          'values (such as screen resolution settings).\n\n'
          'A slider is a good choice when you know that users think of the value '
          'as a relative quantity, not a numeric value. For example, users think '
          'about setting their audio volume to low or medium—not about setting '
          'the value to 2 or 5.',
        ),
        subtitle(content: const Text('A simple Slider')),
        description(
          content: const Text('A slider that can be used to set a value.'),
        ),
      ],
    );
  }
}
