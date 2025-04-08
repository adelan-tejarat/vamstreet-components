import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_widgets.dart' show AdaptiveCheckbox;
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Adaptive Checkbox', type: AdaptiveCheckbox)
Widget adaptiveCheckboxUseCase(BuildContext context) {
  final isChecked = context.knobs.boolean(
    label: 'Checked',
    initialValue: false,
  );

  final isDisabled = context.knobs.boolean(
    label: 'Disabled',
    initialValue: false,
  );

  final hasLabel = context.knobs.boolean(
    label: 'Show Label',
    initialValue: true,
  );

  final labelText = context.knobs.string(
    label: 'Label Text',
    initialValue: 'I agree to terms and conditions',
  );

  final fontSize = context.knobs.double.slider(
    label: 'Font Size',
    initialValue: 14,
    min: 8,
    max: 24,
  );

  return Center(
    child: AdaptiveCheckbox(
      checked: isChecked,
      onChanged: isDisabled ? null : (value) {
        // You can add debug print or state management here
        debugPrint('Checkbox value changed: $value');
      },
      label: hasLabel ? labelText : null,
      labelStyle: TextStyle(
        fontSize: fontSize,
        color: isDisabled ? Colors.grey : Colors.black,
      ),
    ),
  );
}