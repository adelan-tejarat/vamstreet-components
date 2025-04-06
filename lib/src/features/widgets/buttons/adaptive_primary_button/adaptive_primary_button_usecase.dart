import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/main/language/core/localization_extension.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## adaptivePrimaryButtonUseCase Widget Documentation
///
/// The `adaptivePrimaryButtonUseCase` is a dynamic widget designed for testing and previewing different variations of the `AdaptivePrimaryButton` widget using the **Widgetbook** framework with "knobs." It allows users to experiment with different properties such as `requestState`, `isOutlined`, `buttonType`, and more, to visualize how the button behaves with different configurations.
///
/// ### Purpose:
/// This widget provides a customizable UI to visualize various configurations of the `AdaptivePrimaryButton` and is useful for documentation and testing purposes in a Widgetbook environment. It leverages the `Widgetbook` framework's `knobs` feature, allowing users to change parameters interactively during runtime.
///
/// ### Parameters (from knobs):
/// - **Request State (`requestState`)**: A list of options (e.g., `loaded`, `loading`, etc.) representing the current state of the request. It controls whether the button shows as loading or in its normal state.
/// - **Button Text (`text`)**: A string for the text displayed on the button.
/// - **Padding Size (`paddingSize`)**: A list of predefined padding options (e.g., `min`, `medium`, `large`) to control the horizontal padding inside the button.
/// - **Button Type (`buttonType`)**: A list of button types (e.g., `titleOnly`, `iconAndTitle`, `iconTitleAndIcon`, etc.) to adjust the button's layout (text and/or icon).
/// - **Prefix Icon (`prefixIcon`)**: An optional knob to choose an icon that will be displayed before the button's text (only applicable for certain button types).
/// - **Suffix Icon (`suffixIcon`)**: An optional knob to choose an icon that will be displayed after the button's text (only applicable for certain button types).
/// - **`textOverflow`** (`TextOverflow?`): Determines how overflowing text should be handled when the button's text content exceeds available space.
/// - **`minHeight`** (`double`): The minimum height allowed for the button and Defaults to `32`.
/// - **`maxWidth`** (`double`): The maximum width allowed for the button and Defaults to `double.infinity`.
/// - **`borderRadius`** (`double`): Controls the corner rounding of the button's border.
/// - **Base Icon (`baseIcon`)**: An optional knob for an icon when the button displays only an icon (for `iconOnly` button type).
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
    initialValue: 200,
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
      child: AdaptivePrimaryButton(
        title: buttonType == ButtonTypeEnum.titleOnly ||
                buttonType == ButtonTypeEnum.iconAndTitle ||
                buttonType == ButtonTypeEnum.titleAndIcon ||
                buttonType == ButtonTypeEnum.iconTitleAndIcon
            ? context.tr(text)
            : null,
        requestState: requestState,
        buttonType: buttonType,
        prefixIcon: buttonType == ButtonTypeEnum.iconAndTitle ||
                buttonType == ButtonTypeEnum.iconTitleAndIcon
            ? prefixIcon
            : null,
        suffixIcon: buttonType == ButtonTypeEnum.titleAndIcon ||
                buttonType == ButtonTypeEnum.iconTitleAndIcon
            ? suffixIcon
            : null,
        baseIcon: buttonType == ButtonTypeEnum.iconOnly ? baseIcon : null,
        onPressed: (requestState == RequestStateEnum.loading || isDisabled)
            ? null
            : () {
                debugPrint('Adaptive Primary Button Pressed');
              },
        paddingSize: paddingSize,
        textOverflow: textOverflow,
        minHeight: minHeight,
        maxWidth: maxWidth,
        borderRadius: borderRadius,
      ),
    ),
  );
}
