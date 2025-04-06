import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/extensions/content_color_mode_extension.dart';

/// ## [AdaptiveButtonContent] Widget Documentation
///
/// The `AdaptiveButtonContent` widget is designed to display the content of a button in an adaptive way based on the button's state (`requestState`) and the selected button layout (`buttonType`). This widget supports various configurations such as displaying just text, text with icons, or a loading state, and dynamically adapts based on the provided input.
///
/// ### Purpose:
/// This widget provides the actual content to be displayed inside an adaptive button. It takes care of different button states, including loading and error states, and supports multiple button layouts (e.g., with icons, just text, or a combination of both). It also handles dynamic text styling based on padding and state.
///
/// ### Parameters:
/// - **[requestState] (`requestState`)**: Determines the current state of the request (e.g., `loading`, `initial`, `loaded`, `error`). It controls the content displayed, like showing a loading indicator or a default button with text and icons.
/// - **[suffixIcon] (`suffixIcon`)**: The icon displayed after the button text (applicable for certain button types).
/// - **[prefixIcon] (`prefixIcon`)**: The icon displayed before the button text (applicable for certain button types).
/// - **[title] (`title`)**: The text to be displayed on the button (applicable for button types that include text).
/// - **[textOverflow]** (`TextOverflow`): Determines how overflowing text should be handled when the button's text content exceeds available space.
/// - **[contentColorMode] (`contentColorMode`)**: Used for detect color of the button contents like text , loading  .
/// - **[buttonType] (`buttonType`)**: Specifies the button's layout (e.g., just text, text and icon, icon only).
/// - **[icon] (`icon`)**: The base icon to be displayed for icon-only buttons.
/// - **[paddingSize] (`paddingSize`)**: Defines the padding around the button content, which affects the text styling.
///
/// ### Layouts Supported (via `buttonType`):
/// - **[titleOnly]**: Displays only the title text.
/// - **[iconAndTitle]**: Displays an icon followed by the title text.
/// - **[titleAndIcon]**: Displays the title text followed by an icon.
/// - **[iconTitleAndIcon]**: Displays an icon, title text, and a suffix icon.
/// - **[iconOnly]**: Displays only an icon.
///
/// ### States Supported (via `requestState`):
/// - **[loading]**: Displays a loading indicator (ProgressRing).
/// - **[initial]** or **loaded**: Displays the button content (title, icons).
/// - **[error]**: Displays an error icon (e.g., a sync icon).
///
/// ### Behavior Based on `requestState`:
/// - **RequestStateEnum.loading**: Displays a loading indicator (ProgressRing).
/// - **RequestStateEnum.initial or RequestStateEnum.loaded**: Displays the button content based on the `buttonType`. For example, it might display just text, text with an icon, or only an icon.
/// - **RequestStateEnum.error**: Displays an error icon (`sync` icon in this case).
///
class AdaptiveButtonContent extends StatelessWidget {
  const AdaptiveButtonContent({
    super.key,
    required this.requestState,
    required this.suffixIcon,
    required this.prefixIcon,
    this.title = '',
    this.textOverflow,
    this.contentColorMode = ContentColorMode.onAccentMode,
    required this.buttonType,
    this.icon,
    this.paddingSize = PaddingSizeEnum.medium,
  });

  final RequestStateEnum requestState;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final TextOverflow? textOverflow;
  final ContentColorMode? contentColorMode;
  final ButtonTypeEnum buttonType;
  final IconData? icon;
  final PaddingSizeEnum paddingSize;

  @override
  Widget build(BuildContext context) {
    final Color contentColor =
        context.getColorOfContentColorMode(contentColorMode);

    return Center(
      child: switch (requestState) {
        RequestStateEnum.loading => SizedBox(
            height: 16,
            width: 16,
            child: ProgressRing(
              activeColor: contentColor,
              backgroundColor: contentColor.basedOnLuminance(),
              strokeWidth: 1,
            ),
          ),
        RequestStateEnum.initial || RequestStateEnum.loaded => switch (
              buttonType) {
            ButtonTypeEnum.titleOnly => Text(
                title!,
                overflow: textOverflow,
                style: TextStyle(color: contentColor),
              ),
            ButtonTypeEnum.iconAndTitle => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(prefixIcon),
                  const SizedBox(width: 8),
                  Text(
                    title!,
                    style: TextStyle(color: contentColor),
                  ),
                ],
              ),
            ButtonTypeEnum.titleAndIcon => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title!,
                    style: TextStyle(color: contentColor),
                  ),
                  const SizedBox(width: 8),
                  Icon(suffixIcon),
                ],
              ),
            ButtonTypeEnum.iconTitleAndIcon => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(prefixIcon),
                  const SizedBox(width: 8),
                  Text(
                    title!,
                    style: TextStyle(color: contentColor),
                  ),
                  const SizedBox(width: 8),
                  Icon(suffixIcon),
                ],
              ),
            ButtonTypeEnum.iconOnly => Icon(icon),
          },
        RequestStateEnum.error => const Icon(FluentIcons.sync),
      },
    );
  }
}
