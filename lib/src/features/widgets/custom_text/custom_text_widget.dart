import 'package:flutter/material.dart';
import 'package:vamstreet_components/src/features/main/language/core/localization_extension.dart';

/// ## [CustomTextWidget] Class Documentation
///
/// The `CustomTextWidget` class is a stateless widget that displays
/// a localized text string with a customizable text style.
///
/// ### Properties:
///
/// - **[text]** (`String`):
///   - The key for the localized text string to be displayed.
///   - This property is required when constructing the widget.
///
/// - **[textStyle]** (`TextStyle`):
///   - The style to apply to the text (e.g., font size, color, weight, etc.).
///   - This property is required when constructing the widget.
///
/// ### Methods:
///
/// - **[build(BuildContext context)]**:
///   - Builds and returns a `Text` widget using the provided
///   `text` (localized) and `textStyle`.
///
class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr(text),
      style: textStyle,
    );
  }
}
