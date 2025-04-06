import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/features/widgets/chip_text_box/chip_text_box_widget.dart';
import 'package:vamstreet_components/src/core/enum/chip_text_mode.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook/widgetbook.dart';

/// ## [chipTextBoxUseCase] Function Documentation
///
/// This use case allows dynamic testing of the `ChipTextBox` widget using
/// adjustable properties such as mode, placeholder text, read-only state, and prefix text.
///
/// ### Knobs:
/// - [ChipTextMode] : Selects the text box style (normal, correct, incorrect).
/// - [isReadOnly] : Enables/disables user input.
/// - [prefixText] : Sets the prefix text inside the text box.
/// - [placeholder] : Configures the placeholder text.
/// - [inputText] : Displays pre-filled text for testing input behavior.
///
/// ### Example Usage:
/// ```dart
/// ChipTextBox(
///   chipTextMode: ChipTextMode.correct,
///   isReadOnly: false,
///   prefixText: "User:",
///   placeholder: "Enter your username...",
///   onChanged: (value) {
///     print("User input: $value");
///   },
/// )
/// ```

@UseCase(name: 'ChipTextBox Customization', type: ChipTextBox)
Widget chipTextBoxUseCase(BuildContext context) {
  final chipTextMode = context.knobs.list<ChipTextMode>(
    label: 'Text Mode',
    options: ChipTextMode.values,
    initialOption: ChipTextMode.normal,
  );

  final isReadOnly = context.knobs.boolean(
    label: 'Read-Only Mode',
    initialValue: false,
  );

  final prefixText = context.knobs.string(
    label: 'Prefix Text',
    initialValue: '1.',
  );

  final placeholder = context.knobs.string(
    label: 'Placeholder',
    initialValue: 'blockchain',
  );

  return FluentTheme(
    data: FluentThemeData(
      brightness: Brightness.light, // Adjust based on your UI needs
      accentColor: Colors.blue, // Customize theme colors
    ),
    child: SizedBox(
      height: 30,
      width: 141,
      child: ChipTextBox(
        chipTextMode: chipTextMode,
        isReadOnly: isReadOnly,
        prefixText: prefixText,
        placeholder: placeholder,
        onChanged: (value) {
          // print("ChipTextBox Input: $value");
        },
      ),
    ),
  );
}
