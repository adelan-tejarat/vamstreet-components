import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_styles.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/core/widgets/responsive_width_container.dart'
    show ResponsiveWidthContainer;
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_text_button/text_button_widget.dart'
    show TextButtonWidget;
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';

/// ## [AdaptiveTextButton] Class Documentation
///
/// The `AdaptiveTextButton` class is a customizable secondary button designed to adapt to different UI scenarios.
/// It supports multiple layout styles, including text-only, icon-only, and combinations of text and icons.
///
/// ### Properties
/// - [requestState]: Represents the current state of the button (e.g., loading, loaded).
/// - [onPressed]: Callback triggered when the button is tapped (disabled during loading).
/// - [title]: Optional text label displayed on the button.
/// - [prefixIcon] / [suffixIcon]: Optional icons placed before or after the title, depending on the layout.
/// - [baseIcon]: Icon shown when the button is in icon-only mode.
/// - [textOverflow]: Defines how text is rendered when it overflows the available space.
/// - [expandToFullWidth]: If true, the button stretches to occupy the full width of its container.
/// - [minHeight] / [maxWidth]: Sets minimum height and maximum width constraints of the button.
/// - [borderRadius]: Defines the corner radius of the button's border.
/// - [buttonType]: Determines the layout style of the button (e.g., titleOnly, iconAndTitle).
/// - [paddingSize]: Defines internal horizontal padding of the button.
/// - [isDefaultTextButton]: If true, applies the default text color styling instead of accent color.
///
/// ### Factory Constructors:
/// These factory methods create `AdaptiveTextButton` instances with predefined button types:
/// - [AdaptiveTextButton.createTitleOnly]: A button that displays only a text title.
/// - [AdaptiveTextButton.createIconAndTitle]: A button with an icon before the text.
/// - [AdaptiveTextButton.createTitleAndIcon]: A button with the text followed by an icon.
/// - [AdaptiveTextButton.createIconTitleAndIcon]: A button with an icon before and after the text.
/// - [AdaptiveTextButton.createIconOnly]: A button that displays only an icon.
///
class AdaptiveTextButton extends StatelessWidget {
  const AdaptiveTextButton({
    super.key,
    this.requestState = RequestStateEnum.initial,
    this.onPressed,
    this.expandToFullWidth = false,
    this.suffixIcon,
    this.prefixIcon,
    this.title = '',
    this.borderRadius = 8,
    this.minHeight = 40,
    this.textOverflow,
    this.maxWidth = double.infinity,
    this.buttonType = ButtonTypeEnum.titleOnly,
    this.baseIcon,
    this.paddingSize = PaddingSizeEnum.medium,
    this.isDefaultTextButton = false,
  });

  final RequestStateEnum requestState;
  final VoidCallback? onPressed;
  final bool? expandToFullWidth;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final double minHeight;
  final double maxWidth;
  final TextOverflow? textOverflow;
  final double borderRadius;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;
  final bool isDefaultTextButton;

  // Factory methods to create buttons with specific button types
  factory AdaptiveTextButton.createTitleOnly({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    String? title = '',
    bool isDefaultTextButton = false,
  }) {
    return AdaptiveTextButton(
      requestState: requestState!,
      onPressed: onPressed,
      expandToFullWidth: expandToFullWidth,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
      isDefaultTextButton: isDefaultTextButton,
    );
  }

  factory AdaptiveTextButton.createIconAndTitle({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    String? title = '',
    bool isDefaultTextButton = false,
  }) {
    return AdaptiveTextButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
      isDefaultTextButton: isDefaultTextButton,
    );
  }

  factory AdaptiveTextButton.createTitleAndIcon({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
    String? title = '',
    bool isDefaultTextButton = false,
  }) {
    return AdaptiveTextButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
      isDefaultTextButton: isDefaultTextButton,
    );
  }

  factory AdaptiveTextButton.createIconTitleAndIcon({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String? title = '',
    bool isDefaultTextButton = false,
  }) {
    return AdaptiveTextButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      expandToFullWidth: expandToFullWidth,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      isDefaultTextButton: isDefaultTextButton,
    );
  }

  factory AdaptiveTextButton.createIconOnly({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
    bool isDefaultTextButton = false,
  }) {
    return AdaptiveTextButton(
      requestState: requestState!,
      onPressed: onPressed,
      paddingSize: paddingSize,
      expandToFullWidth: expandToFullWidth,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
      isDefaultTextButton: isDefaultTextButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final buttonColor =
        isDefaultTextButton
            ? theme.extension<DarkPallet>()!.dark900!
            : theme.accentColor;
    return ResponsiveWidthContainer(
      expandToFullWidth: expandToFullWidth!,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight, maxWidth: maxWidth),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: TextButtonWidget(
            paddingSize: paddingSize,
            buttonColor: buttonColor,
            borderRadius: borderRadius,
            requestState: requestState,
            onPressed: onPressed,
            textOverflow: textOverflow,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            title: title,
            buttonType: buttonType,
            baseIcon: baseIcon,
            isDefaultTextButton: isDefaultTextButton,
          ),
        ),
      ),
    );
  }
}
