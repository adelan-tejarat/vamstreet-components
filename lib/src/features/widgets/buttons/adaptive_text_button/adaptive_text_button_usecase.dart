import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/main/language/core/localization_extension.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_text_button/adaptive_text_button.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## [adaptiveTextButtonUseCase] Function Documentation
///
/// The `adaptiveTextButtonUseCase` function demonstrates the use of the `AdaptiveTextButton` widget in a Widgetbook use case.
/// It allows customization of the button's appearance, behavior, and state through the use of knobs.
///
/// ### Properties:
///
/// - **[requestState]** (RequestStateEnum):
///   - The state of the button, which can be loaded, loading, or error.
///
/// - **[isDefaultTextButton]** (`bool`):
///   - Toggles whether the button should use the default Text style.
///
/// - **[isDisabled]** (bool):
///   - A boolean value that determines whether the button is disabled.
///
/// - **[text]** (String):
///   - The text label to display on the button.
///
/// - **[paddingSize]** (PaddingSizeEnum):
///   - The padding size to apply around the button content.
///
/// - **[buttonType]** (ButtonTypeEnum):
///   - Specifies the layout of the button, including whether it includes text, icons, or both.
///
/// - **[prefixIcon]** (IconData?):
///   - The icon to display before the button text, used when the button type includes an icon at the start.
///
/// - **[suffixIcon]** (IconData?):
///   - The icon to display after the button text, used when the button type includes an icon at the end.
///
/// - **[textOverflow]** (`TextOverflow?`): Determines how overflowing text should be handled when the button's text content exceeds available space.
///
/// - **[minHeight]** (`double`): The minimum height allowed for the button and Defaults to `32`.
///
/// - **[maxWidth]** (`double`): The maximum width allowed for the button and Defaults to `double.infinity`.
///
/// - **[borderRadius]** (`double`): Controls the corner rounding of the button's border.
///
/// - **[baseIcon]** (IconData?):
///   - The icon to display on the button when only an icon is shown (icon-only button).

@UseCase(name: 'Adaptive Text Button with Knobs', type: AdaptiveTextButton)
Widget adaptiveTextButtonUseCase(BuildContext context) {
  final requestState = context.knobs.list<RequestStateEnum>(
    label: 'Request State',
    options: RequestStateEnum.values,
    initialOption: RequestStateEnum.loaded,
  );

  final isDefaultTextButton = context.knobs.boolean(
    label: 'Default Text Style',
    initialValue: false,
  );

  final text = context.knobs.string(
    label: 'Button Text',
    initialValue: 'Click Me',
  );

  final paddingSize = context.knobs.list<PaddingSizeEnum>(
    label: 'Padding Size',
    options: PaddingSizeEnum.values,
    initialOption: PaddingSizeEnum.min,
  );
  final buttonType = context.knobs.list<ButtonTypeEnum>(
    label: 'Button Type',
    options: ButtonTypeEnum.values,
    initialOption: ButtonTypeEnum.titleOnly,
  );

  final prefixIcon = context.knobs.listOrNull<IconData?>(
    label: 'Prefix Icon',
    options: [FluentIcons.add, FluentIcons.settings],
    initialOption: FluentIcons.add,
  );

  final suffixIcon = context.knobs.listOrNull<IconData?>(
    label: 'Suffix Icon',
    options: [FluentIcons.chevron_right, FluentIcons.search],
    initialOption: FluentIcons.chevron_right,
  );

  final baseIcon = context.knobs.listOrNull<IconData?>(
    label: 'Base Icon',
    options: [FluentIcons.search, FluentIcons.add],
    initialOption: FluentIcons.search,
  );

  final minHeight = context.knobs.double.slider(
    label: 'Min Height',
    initialValue: 32,
    min: 0,
    max: 100,
  );

  final maxWidth = context.knobs.double.slider(
    label: 'Max Width',
    initialValue: 0,
    min: 0,
    max: 500,
  );

  final borderRadius = context.knobs.double.slider(
    label: 'Border Radius',
    initialValue: 4,
    min: 0,
    max: 20,
  );

  final textOverflow = context.knobs.list<TextOverflow>(
    label: 'Text Overflow',
    options: TextOverflow.values,
    initialOption: TextOverflow.ellipsis,
  );

  return IntrinsicHeight(
    child: IntrinsicWidth(
      child: AdaptiveTextButton(
        title:
            buttonType == ButtonTypeEnum.titleOnly ||
                    buttonType == ButtonTypeEnum.iconAndTitle ||
                    buttonType == ButtonTypeEnum.titleAndIcon ||
                    buttonType == ButtonTypeEnum.iconTitleAndIcon
                ? context.tr(text)
                : null,
        requestState: requestState,
        buttonType: buttonType,
        prefixIcon:
            buttonType == ButtonTypeEnum.iconAndTitle ||
                    buttonType == ButtonTypeEnum.iconTitleAndIcon
                ? prefixIcon
                : null,
        suffixIcon:
            buttonType == ButtonTypeEnum.titleAndIcon ||
                    buttonType == ButtonTypeEnum.iconTitleAndIcon
                ? suffixIcon
                : null,
        baseIcon: buttonType == ButtonTypeEnum.iconOnly ? baseIcon : null,
        onPressed:
            (requestState == RequestStateEnum.loading)
                ? null
                : () {
                  debugPrint('Adaptive Text Button Pressed');
                },
        paddingSize: paddingSize,
        textOverflow: textOverflow,
        minHeight: minHeight,
        maxWidth: maxWidth,
        borderRadius: borderRadius,
        isDefaultTextButton: isDefaultTextButton,
      ),
    ),
  );
}
