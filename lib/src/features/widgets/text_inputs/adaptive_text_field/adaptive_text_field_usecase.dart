import 'package:fluent_ui/fluent_ui.dart' show FluentIcons;
import 'package:flutter/material.dart';
import 'package:vamstreet_components/src/features/widgets/text_inputs/adaptive_text_field/adaptive_text_field_widget.dart'
    show AdaptiveTextInput;
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## [adaptiveTextInputUseCase] Function Documentation
///
/// This is the Widgetbook use case for testing and demonstrating the `AdaptiveTextInput` component.
///
/// Provides interactive knobs to configure all aspects of the text input field:
/// - **[Text Content]**: Control initial value and placeholder text
/// - **[Behavior]**: Configure read-only state and max length
/// - **[Appearance]**: Adjust text alignment and keyboard type
/// - **[Suffix Icon]**: Toggle and select suffix icons
///
/// ### Knob Parameters:
///
/// - **Text Content**:
///   - `Initial Value`: Sets the starting text (default: '')
///   - `Placeholder`: Hint text when empty (default: 'Enter text...')
///
/// - **Behavior**:
///   - `Read Only`: Toggles editability (default: false)
///   - `Max Length`: Sets character limit (default: 100)
///
/// - **Appearance**:
///   - `Text Alignment`: Left/Right/Center alignment (default: start)
///   - `Keyboard Type`: Text/Number/Email/Phone input (default: text)
///
/// - **Suffix Icon**:
///   - `Show Suffix Icon`: Toggles visibility (default: false)
///   - `Suffix Icon`: Choose from search/calendar/QR code icons
///
/// ### Interactive Features:
///
/// - Live preview of all changes
/// - Debug prints for:
///   - Text changes (`Input changed: [value]`)
///   - Suffix icon taps (`Suffix tapped`)
/// - Responsive padding (8px sides)
/// - Centered component display
///
@UseCase(name: 'Adaptive Text Input', type: AdaptiveTextInput)
Widget adaptiveTextInputUseCase(BuildContext context) {
  // Text Content
  final initialValue = context.knobs.string(
    label: 'Initial Value',
    initialValue: '',
  );

  final placeholder = context.knobs.string(
    label: 'Placeholder',
    initialValue: 'Enter text...',
  );

  // Behavior
  final isReadOnly = context.knobs.boolean(
    label: 'Read Only',
    initialValue: false,
  );

  final maxLength = context.knobs.int.input(
    label: 'Max Length',
    initialValue: 100,
  );

  // Appearance
  final textAlign = context.knobs.list<TextAlign>(
    label: 'Text Alignment',
    options: TextAlign.values,
    initialOption: TextAlign.start,
  );

  final keyboardType = context.knobs.list<TextInputType>(
    label: 'Keyboard Type',
    options: [
      TextInputType.text,
      TextInputType.number,
      TextInputType.emailAddress,
      TextInputType.phone,
    ],
    initialOption: TextInputType.text,
  );

  // Suffix Icon
  final showSuffix = context.knobs.boolean(
    label: 'Show Suffix Icon',
    initialValue: false,
  );

  final suffixIcon = context.knobs.list<Widget>(
    label: 'Suffix Icon',
    options: [
      const Icon(FluentIcons.search),
      const Icon(FluentIcons.calendar),
      const Icon(FluentIcons.q_r_code),
    ],
    initialOption: const Icon(FluentIcons.search),
  );

  return Center(
    child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: AdaptiveTextInput(
        initialValue: initialValue,
        placeholder: placeholder,
        readOnly: isReadOnly,
        maxLength: maxLength.toInt(),
        textAlign: textAlign,
        keyboardType: keyboardType,
        suffix: showSuffix ? suffixIcon : null,
        onTapSuffix: showSuffix ? () => debugPrint('Suffix tapped') : null,
        onChanged: (value) => debugPrint('Input changed: $value'),
      ),
    ),
  );
}
