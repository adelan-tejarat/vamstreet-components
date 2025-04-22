import 'package:fluent_ui/fluent_ui.dart' show TextFormBox;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show TextInputFormatter;
import 'package:vamstreet_components/src/features/widgets/text_inputs/core/text_field_sizes.dart'
    show TextFieldSizes;

/// ## [AdaptiveTextInput] Class Documentation
///
/// The `AdaptiveTextInput` class is a Fluent UI styled text input field with
/// adaptive sizing and customizable padding/layout properties.
///
/// ### Properties:
///
/// - **[placeholder]** (`String?`):
///   - The hint text displayed when the input is empty.
///   - Default: `null`
///
/// - **[initialValue]** (`String?`):
///   - The initial text value of the input field.
///   - Default: `null`
///
/// - **[textFieldSizes]** (`TextFieldSizes?`):
///   - Controls dimensions and padding of the input field.
///   - Default: `TextFieldSizes.material`
///
/// - **[suffix]** (`Widget?`):
///   - A widget to display after the input (e.g., icon, button).
///   - Default: `null`
///
/// - **[readOnly]** (`bool?`):
///   - Whether the text field should be read-only.
///   - Default: `false`
///
/// - **[textAlign]** (`TextAlign?`):
///   - How the text should be aligned horizontally.
///   - Default: `TextAlign.start`
///
/// - **[maxLength]** (`int?`):
///   - Maximum number of characters allowed.
///   - Default: `null` (no limit)
///
/// - **[keyboardType]** (`TextInputType?`):
///   - Type of keyboard to display (text, number, email, etc.).
///   - Default: `null` (default keyboard)
///
/// - **[inputStyle]** (`TextStyle?`):
///   - Style for the input text.
///   - Default: `null` (inherits theme)
///
/// - **[placeholderStyle]** (`TextStyle?`):
///   - Style for the placeholder text.
///   - Default: `null` (inherits theme)
///
/// - **[onTapSuffix]** (`VoidCallback?`):
///   - Callback when suffix widget is tapped.
///   - Default: `null`
///
/// - **[onChanged]** (`ValueChanged<String>?`):
///   - Callback when text changes.
///   - Default: `null`
///
/// - **[inputFormatters]** (`List<TextInputFormatter>?`):
///   - List of input formatters for validation/formatting.
///   - Default: `null`
///
/// - **[maxLines]** (`int?`):
///   - Controls the maximum number of visible lines in the `TextFormBox` .
///   - Default: `1`
///
/// - **[height]** (`double?`):
///   - Height of `TextFormBox` for input data .
///   - Default: `48`
///
/// ### Behavior:
///
/// - Automatically handles click interactions on suffix widgets
/// - Supports both material and compact sizing presets
/// - Excludes semantics for better accessibility control
///
class AdaptiveTextInput extends StatelessWidget {
  const AdaptiveTextInput({
    super.key,
    this.placeholder,
    this.suffix,
    this.inputFormatters,
    this.onTapSuffix,
    this.textFieldSizes = TextFieldSizes.material,
    this.initialValue,
    this.onChanged,
    this.readOnly = false,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
    this.inputStyle,
    this.placeholderStyle,
  });

  final String? placeholder;
  final String? initialValue;
  final TextFieldSizes? textFieldSizes;
  final Widget? suffix;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final TextStyle? inputStyle;
  final TextStyle? placeholderStyle;
  final VoidCallback? onTapSuffix;
  final ValueChanged<String>? onChanged;

  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textFieldSizes?.width,
      height: textFieldSizes?.height,
      child: ExcludeSemantics(
        child: TextFormBox(
          decoration: WidgetStateProperty.all<BoxDecoration>(
            BoxDecoration(
              borderRadius: BorderRadius.circular(
                textFieldSizes!.borderRadios!,
              ),
            ),
          ),
          keyboardType: keyboardType,
          maxLines: maxLines,
          placeholderStyle: placeholderStyle,
          style: inputStyle,
          readOnly: readOnly!,
          maxLength: maxLength,
          textAlign: textAlign!,
          initialValue: initialValue,
          onChanged: onChanged,
          suffix: Padding(
            padding: EdgeInsetsDirectional.only(
              end: textFieldSizes!.endPadding!,
              start: textFieldSizes!.suffixStartPadding!,
            ),
            child:
                suffix != null && onTapSuffix != null
                    ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(onTap: onTapSuffix, child: suffix),
                    )
                    : suffix,
          ),
          placeholder: placeholder,
          padding: EdgeInsetsDirectional.only(
            start: textFieldSizes!.startPadding!,
            bottom: textFieldSizes!.bottomPadding!,
            top: textFieldSizes!.topPadding!,
          ),
          inputFormatters: inputFormatters,
        ),
      ),
    );
  }
}
