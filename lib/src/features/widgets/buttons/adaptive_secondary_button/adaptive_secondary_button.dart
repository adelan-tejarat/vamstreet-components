import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_styles.dart' show AppTheme;
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/core/pallets/dark_pallet.dart'
    show DarkPallet;
import 'package:vamstreet_components/src/core/widgets/responsive_width_container.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_secondary_button/outline_button_widget.dart'
    show OutlineButtonWidget;
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';

/// ## [AdaptiveTextButton] Class Documentation
///
/// The `AdaptiveTextButton` class is a customizable secondary button designed to adapt to different UI scenarios.
/// It supports multiple layout styles, including text-only, icon-only, and combinations of text and icons.
///
/// ### Properties
/// - [requestState]: Controls the loading or active state of the button.
/// - [onPressed]: Callback triggered when the button is tapped.
/// - [title]: Optional text label shown on the button.
/// - [prefixIcon] / [suffixIcon]: Optional icons before or after the title.
/// - [baseIcon]: Icon used in icon-only mode.
/// - [textOverflow]: Defines how the text behaves when overflowed.
/// - [expandToFullWidth]: If true, button stretches to full width of its container.
/// - [minHeight] / [maxWidth]: Size constraints applied to the button.
/// - [borderRadius]: Corner rounding value for the button.
/// - [buttonType]: Defines the visual layout of the button (e.g., titleOnly, iconOnly).
/// - [paddingSize]: Internal horizontal padding of the button.
/// - [isDefaultOutlinedButton]: Determines if the button uses the default text color style.
///
/// ### Factory Constructors:
/// These factory methods create `AdaptiveTextButton` instances with predefined button types:
/// - [AdaptiveTextButton.createTitleOnly]: A button with only text (title).
/// - [AdaptiveTextButton.createIconAndTitle]: A button with an icon before the text.
/// - [AdaptiveTextButton.createTitleAndIcon]: A button with the text followed by an icon.
/// - [AdaptiveTextButton.createIconTitleAndIcon]: A button with an icon before and after the text.
/// - [AdaptiveTextButton.createIconOnly]: A button that displays only an icon.
///
class AdaptiveSecondaryButton extends StatelessWidget {
  const AdaptiveSecondaryButton({
    super.key,
    this.requestState = RequestStateEnum.initial,
    this.onPressed,
    this.expandToFullWidth = false,
    this.suffixIcon,
    this.prefixIcon,
    this.borderRadius = 8,
    this.minHeight = 40,
    this.textOverflow,
    this.maxWidth = double.infinity,
    this.title = '',
    this.buttonType = ButtonTypeEnum.titleOnly,
    this.baseIcon,
    this.paddingSize = PaddingSizeEnum.medium,
    this.isDefaultOutlinedButton = false,
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
  final bool isDefaultOutlinedButton;

  // Factory methods to create buttons with specific button types
  factory AdaptiveSecondaryButton.createTitleOnly({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    String? title = '',
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      expandToFullWidth: expandToFullWidth,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconAndTitle({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    String? title = '',
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createTitleAndIcon({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
    String? title = '',
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconTitleAndIcon({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String? title = '',
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      expandToFullWidth: expandToFullWidth,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconOnly({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      paddingSize: paddingSize,
      expandToFullWidth: expandToFullWidth,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidthContainer(
      expandToFullWidth: expandToFullWidth!,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight, maxWidth: maxWidth),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Builder(
            builder: (context) {
              final theme = AppTheme.of(context);
              final buttonColor = isDefaultOutlinedButton
                  ? theme.extension<DarkPallet>()!.dark900!
                  : theme.accentColor;

              return OutlineButtonWidget(
                paddingSize: paddingSize,
                buttonColor: buttonColor,
                borderRadius: borderRadius,
                requestState: requestState,
                onPressed: onPressed,
                textOverflow: textOverflow,
                isDefaultOutlinedButton: isDefaultOutlinedButton,
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                title: title,
                buttonType: buttonType,
                baseIcon: baseIcon,
              );
            },
          ),
        ),
      ),
    );
  }
}
