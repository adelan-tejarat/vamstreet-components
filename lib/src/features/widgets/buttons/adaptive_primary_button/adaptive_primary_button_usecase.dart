import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/core/widgets/enable_intrinsic_width.dart' show EnableIntrinsicWidth;
import 'package:vamstreet_components/src/features/main/language/core/localization_extension.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## [adaptivePrimaryButtonUseCase] Widget Documentation
///
/// The adaptivePrimaryButtonUseCase is a dynamic widget for previewing and
/// testing various configurations of the AdaptivePrimaryButton using the Widgetbook knobs feature.
///
/// ### Purpose:
/// Provides an interactive UI for experimenting with AdaptivePrimaryButton properties
/// in a Widgetbook environment, useful for testing and visualizing UI behaviors.
///
/// ### Parameters (from knobs):
/// - Request State [requestState]: Defines the current loading state of the button (e.g., loaded, loading).
/// - Disable Button [isDisabled] : Disables the button when true.
/// - Button Text [text] : The label text displayed on the button.
/// - Padding Size  [paddingSize] : Controls internal horizontal padding (e.g., min, medium).
/// - Button Type [buttonType] : Defines button layout (e.g., titleOnly, iconAndTitle).
/// - Prefix Icon [prefixIcon] : Icon shown before text for specific button types.
/// - Suffix Icon [suffixIcon]: Icon shown after text for specific button types.
/// - Base Icon [baseIcon] : Icon used when buttonType is iconOnly.
/// - Min Height [minHeight] : Minimum height of the button (default is 32).
/// - Max Width [maxWidth] : Maximum width of the button (default is 200).
/// - Border Radius [borderRadius] : Rounding of the button's corners.
/// - Text Overflow [textOverflow] : How to handle text overflow (e.g., ellipsis).
/// - Expand to Full Width [expandToFullWidth] : Expands the button to full width if true.
///
@UseCase(
  name: 'Adaptive Primary Button with Knobs',
  type: AdaptivePrimaryButton,
)
Widget adaptivePrimaryButtonUseCase(BuildContext context) {
  final requestState = context.knobs.list<RequestStateEnum>(
    label: 'Request State',
    options: RequestStateEnum.values,
    initialOption: RequestStateEnum.loaded,
  );
  final isDisabled = context.knobs.boolean(
    label: 'Disable Button',
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
    initialValue: 500,
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

  final expandToFullWidth = context.knobs.boolean(
    label: 'Expand to Full Width',
    initialValue: false,
  );

  return IntrinsicHeight(
    child: EnableIntrinsicWidth(
      expandToFullWidth: expandToFullWidth,
      child: AdaptivePrimaryButton(
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
            (requestState == RequestStateEnum.loading || isDisabled)
                ? null
                : () {
                  debugPrint('Adaptive Primary Button Pressed');
                },
        paddingSize: paddingSize,
        expandToFullWidth: expandToFullWidth,
        textOverflow: textOverflow,
        minHeight: minHeight,
        maxWidth: maxWidth,
        borderRadius: borderRadius,
      ),
    ),
  );
}
