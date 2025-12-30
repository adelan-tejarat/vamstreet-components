import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/core/widgets/enable_intrinsic_width.dart'
    show EnableIntrinsicWidth;
import 'package:vamstreet_components/src/features/main/language/core/localization_extension.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_text_button/adaptive_text_button.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## [adaptiveTextButtonUseCase] Widget Documentation
///
/// The adaptiveTextButtonUseCase is a dynamic widget for previewing and testing
/// various configurations of the AdaptiveTextButton using the Widgetbook knobs feature.
///
/// ### Purpose:
/// Provides an interactive UI for experimenting with AdaptiveTextButton properties
/// in a Widgetbook environment, useful for testing and visualizing UI behaviors.
///
/// ### Parameters (from knobs):
/// - Request State [requestState]: Defines the current loading state of the button (e.g., loaded, loading).
/// - Default Text Style [isDefaultTextButton]: Applies default text styling when true.
/// - Button Text [text] : The label text displayed on the button.
/// - Padding Size  [paddingSize] : Controls internal horizontal padding (e.g., min, medium).
/// - Button Type [buttonType] : Defines button layout (e.g., titleOnly, iconAndTitle).
/// - Prefix Icon [prefixIcon] : Icon shown before text for specific button types.
/// - Suffix Icon [suffixIcon]: Icon shown after text for specific button types.
/// - Base Icon [baseIcon] : Icon used when buttonType is iconOnly.
/// - Min Height [minHeight] : Minimum height of the button (default is 32).
/// - Max Width [maxWidth] : Maximum width of the button (default is 0).
/// - Border Radius [borderRadius] : Rounding of the button's corners.
/// - Text Overflow [textOverflow] : How to handle text overflow (e.g., ellipsis).
/// - Expand to Full Width [expandToFullWidth] : Expands the button to full width if true.
///
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

  final expandToFullWidth =
      // NOTE: for fix debug overflow in `EnableIntrinsicWidth` and show correct in widgetBook  this value changed to reverse mode
      !context.knobs.boolean(
        label: 'Expand to Full Width',
        initialValue: false,
      );

  return IntrinsicHeight(
    child: EnableIntrinsicWidth(
      expandToFullWidth:
          // NOTE: for fix debug overflow in `EnableIntrinsicWidth` and show correct in widgetBook  this value changed to reverse mode
          !expandToFullWidth,
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
        onPressed: (requestState == RequestStateEnum.loading)
            ? null
            : () {
                debugPrint('Adaptive Text Button Pressed');
              },
        paddingSize: paddingSize,
        textOverflow: textOverflow,
        minHeight: minHeight,
        expandToFullWidth: expandToFullWidth,
        maxWidth: maxWidth,
        borderRadius: borderRadius,
        isDefaultTextButton: isDefaultTextButton,
      ),
    ),
  );
}
