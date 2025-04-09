import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_widgets.dart' show AdaptiveCheckbox;
import 'package:vamstreet_components/src/core/enum/app_text_style_type.dart';
import 'package:vamstreet_components/src/core/enum/dynamic_color_enum.dart'
    show DynamicColorEnum;
import 'package:widgetbook/widgetbook.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' show UseCase;

@UseCase(name: 'Adaptive Checkbox with Knobs', type: AdaptiveCheckbox)
Widget adaptiveCheckboxUseCase(BuildContext context) {
  final isChecked = context.knobs.boolean(label: 'Checked', initialValue: true);

  final hasLabel = context.knobs.boolean(
    label: 'Show Label',
    initialValue: true,
  );

  final label = context.knobs.string(
    label: 'Label',
    initialValue: 'Accept terms',
  );

  final appTextStyleType = context.knobs.list<AppTextStyleType>(
    label: 'Text Style',
    options: AppTextStyleType.values,
    initialOption: AppTextStyleType.caption,
  );

  final dynamicColor = context.knobs.list<DynamicColorEnum>(
    label: 'Dynamic Color',
    options: DynamicColorEnum.values,
    initialOption: DynamicColorEnum.asAccentColor,
  );

  final isDisabled = context.knobs.boolean(
    label: 'Disabled',
    initialValue: false,
  );

  return Center(
    child: AdaptiveCheckbox(
      checked: isChecked,
      onChanged:
          isDisabled
              ? null
              : (value) {
                // You can add debug print or state management here
                debugPrint('Checkbox value changed: $value');
              },
      label: hasLabel ? label : null,
      appTextStyleType: appTextStyleType,
      dynamicColor: dynamicColor,
    ),
  );
}
