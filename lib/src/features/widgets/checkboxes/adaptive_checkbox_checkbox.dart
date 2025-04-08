import 'package:fluent_ui/fluent_ui.dart';

class AdaptiveCheckbox extends StatelessWidget {
  final bool? checked;
  final ValueChanged<bool?>? onChanged;
  final String? label;
  final TextStyle? labelStyle;

  const AdaptiveCheckbox({
    super.key,
    required this.checked,
    required this.onChanged,
    this.label,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checked: checked,
      onChanged: onChanged,
      content: Text(label??'', style: labelStyle),
    );
  }
}
