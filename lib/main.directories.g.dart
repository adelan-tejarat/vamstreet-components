// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button_usecase.dart'
    as _i2;
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_secondary_button/adaptive_secondary_button_usecase.dart'
    as _i3;
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_text_button/adaptive_text_button_usecase.dart'
    as _i4;
import 'package:vamstreet_components/src/features/widgets/chip_text_box/chip_text_box_use_case.dart'
    as _i5;
import 'package:vamstreet_components/src/features/widgets/custom_text/custom_text_usecase.dart'
    as _i6;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'features',
    children: [
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookFolder(
            name: 'buttons',
            children: [
              _i1.WidgetbookFolder(
                name: 'adaptive_primary_button',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'AdaptivePrimaryButton',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Adaptive Primary Button with Knobs',
                      builder: _i2.adaptivePrimaryButtonUseCase,
                    ),
                  ),
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'adaptive_secondary_button',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'AdaptiveSecondaryButton',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Adaptive Secondary Button with Knobs',
                      builder: _i3.adaptiveSecondaryButtonUseCase,
                    ),
                  ),
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'adaptive_text_button',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'AdaptiveTextButton',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Adaptive Text Button with Knobs',
                      builder: _i4.adaptiveTextButtonUseCase,
                    ),
                  ),
                ],
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'chip_text_box',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'ChipTextBox',
                useCase: _i1.WidgetbookUseCase(
                  name: 'ChipTextBox Customization',
                  builder: _i5.chipTextBoxUseCase,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'custom_text',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'CustomTextWidget',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Select the text to display from the dropdown',
                  builder: _i6.customTextWidgetUseCase,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
