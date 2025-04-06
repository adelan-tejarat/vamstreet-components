import 'package:flutter/material.dart';
import 'package:vamstreet_components/src/core/text_styles/inter_text_styles.dart';
import 'package:vamstreet_components/src/core/utils/gen/localization/locale_keys.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'custom_text_widget.dart';

/// ## [customTextWidgetUseCase] Function Documentation
///
/// This is the use case for a custom text widget with a dropdown for text options.
///
/// Users can select from a predefined list of options to display custom text.
/// - [label] : "Select Text"
/// - [options] : [LocaleKeys.app_name, LocaleKeys.man, LocaleKeys.woman]
/// - [initialOption] : LocaleKeys.app_name
/// - [description] : "Select the text to display from the dropdown."
///
@UseCase(
  name: 'Select the text to display from the dropdown',
  type: CustomTextWidget,
)
Widget customTextWidgetUseCase(BuildContext context) {
  final selectedText = context.knobs.list<String>(
    label: 'Select Text',
    options: [LocaleKeys.app_name, LocaleKeys.man, LocaleKeys.woman],
    initialOption: LocaleKeys.app_name,
    description: 'Select the text to display from the dropdown.',
  );

  final selectedStyleName = context.knobs.list<String>(
    label: 'Text Style',
    initialOption: 'Body',
    options: [
      'Caption',
      'Body',
      'Subtitle',
      'Title',
      'Title Large',
      'Display',
      'Body Large',
      'Body Strong',
    ],
    description: 'Choose a predefined text style from the list.',
  );

  final fontWeight = context.knobs.list<String>(
    label: 'Font Weight',
    initialOption: 'Normal',
    options: ['Normal', 'Bold'],
    description: 'Choose the font weight.',
  );

  final fontStyle = context.knobs.list<String>(
    label: 'Font Style',
    initialOption: 'Normal',
    options: ['Normal', 'Italic'],
    description: 'Choose the font style.',
  );

  final textStyleMap = {
    'Caption': InterTextStyles.captionMedium,
    'Body': InterTextStyles.smallRegular,
    'Subtitle': InterTextStyles.subtitleRegular,
    'Title': InterTextStyles.titleMedium,
    'Title Large': InterTextStyles.titleBold,
    'Display': InterTextStyles.headerBold,
    'Body Large': InterTextStyles.bodyRegular,
    'Body Strong': InterTextStyles.bodyBold,
  };

  final selectedTextStyle =
      textStyleMap[selectedStyleName] ?? InterTextStyles.bodyRegular;

  final textStyle = selectedTextStyle.copyWith(
    fontWeight: fontWeight == 'Bold' ? FontWeight.bold : FontWeight.normal,
    fontStyle: fontStyle == 'Italic' ? FontStyle.italic : FontStyle.normal,
  );

  return CustomTextWidget(text: selectedText, textStyle: textStyle);
}
