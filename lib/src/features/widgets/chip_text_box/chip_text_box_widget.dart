import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/chip_text_mode.dart';
import 'package:vamstreet_components/src/core/extensions/color_context_extension.dart';

/// [ChipTextBox] Documentation
///
/// A customizable text input widget designed to integrate seamlessly with
/// the Fluent UI design system. It allows for read-only and editable states
/// with dynamic styling based on the provided `ChipTextMode`.
///
/// ### Features:
/// - Supports read-only mode with `isReadOnly` flag.
/// - Displays an optional prefix text.
/// - Allows for placeholder text customization.
/// - Adapts styling dynamically using the `fromPalletColor` extension.
///
/// ### Parameters:
/// - [chipTextMode] : Defines the color scheme for the text box.
/// - [isReadOnly] *(optional)*: A boolean flag to enable or disable user input.
/// - [prefixText] *(optional)*: A string displayed before the user input.
/// - [placeholder] *(optional)*: A hint text displayed when the input is empty.
/// - [onChanged] : A callback function triggered when the text value changes.
///
/// ### Example Usage:
/// ```dart
/// ChipTextBox(
///   chipTextMode: ChipTextMode.defaultMode,
///   isReadOnly: false,
///   prefixText: "Label:",
///   placeholder: "Enter text...",
///   onChanged: (value) {
///     print("Input changed: $value");
///   },
/// )
/// ```
///
class ChipTextBox extends StatelessWidget {
  const ChipTextBox({
    super.key,
    required this.chipTextMode,
    this.isReadOnly = false,
    this.prefixText = '',
    required this.onChanged,
    this.placeholder = '',
  });
  final ChipTextMode chipTextMode;
  final String? placeholder;
  final bool? isReadOnly;
  final String? prefixText;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isReadOnly!,
      child: ExcludeSemantics(
        child: TextBox(
          readOnly: isReadOnly!,
          prefix: Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 8,
              start: 16,
            ),
            child: Text(
              '$prefixText',
              style: TextStyle(
                color: context.fromPalletColor(chipTextMode.textColor),
              ),
            ),
          ),
          padding:
              const EdgeInsetsDirectional.only(bottom: 4, start: 4, end: 16),
          placeholder: placeholder,
          style:
              TextStyle(color: context.fromPalletColor(chipTextMode.textColor)),
          placeholderStyle:
              TextStyle(color: context.fromPalletColor(chipTextMode.textColor)),
          decoration: WidgetStateProperty.resolveWith<BoxDecoration>(
            (Set<WidgetState> states) {
              return BoxDecoration(
                borderRadius: BorderRadius.circular(64),
                color: context.fromPalletColor(chipTextMode.background),
              );
            },
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
