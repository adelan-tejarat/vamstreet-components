import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_core.dart'
    show PaddingSizeEnum, RequestStateEnum;
import 'package:vamstreet_components/src/core/widgets/responsive_width_container.dart'
    show ResponsiveWidthContainer;
import 'package:vamstreet_components/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart'
    show AdaptiveButtonContent;
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart'
    show ButtonTypeEnum;
import 'package:vamstreet_components/src/features/widgets/buttons/core/utils/methods/get_fluent_button_style_method.dart'
    show getFluentButtonStyleMethod;

/// ## [AdaptivePrimaryButton] Class Documentation
///
/// The `AdaptivePrimaryButton` class is a customizable primary button designed to adapt to different UI requirements.
/// It supports various configurations, including text-only, icon-only, and combinations of text and icons.
///
/// ### Properties
/// - [requestState]: Controls the loading or active state of the button.
/// - [onPressed]: Callback triggered when the button is tapped.
/// - [title]: Optional text label shown on the button.
/// - [prefixIcon] / suffixIcon: Optional icons before or after the title.
/// - [baseIcon]: Icon used in icon-only mode.
/// - [textOverflow]: Defines text overflow behavior.
/// - [expandToFullWidth]: If true, the button stretches to full width.
/// - [minHeight] / maxWidth: Size constraints for the button.
/// - [borderRadius]: Corner rounding of the button.
/// - [buttonType]: Layout style of the button (e.g., titleOnly, iconOnly).
/// - [paddingSize]: Internal horizontal padding size.
///
/// ### Factory Constructors:
/// These factory methods create `AdaptivePrimaryButton` instances with different button types:
/// - [AdaptivePrimaryButton.createTitleOnly]: A button with only text (title).
/// - [AdaptivePrimaryButton.createIconAndTitle]: A button with an icon before the text.
/// - [AdaptivePrimaryButton.createTitleAndIcon]: A button with the text followed by an icon.
/// - [AdaptivePrimaryButton.createIconTitleAndIcon]: A button with an icon before and after the text.
/// - [AdaptivePrimaryButton.createIconOnly]: A button that only shows an icon.
///
class AdaptivePrimaryButton extends StatelessWidget {
  const AdaptivePrimaryButton({
    super.key,
    this.requestState = RequestStateEnum.initial,
    this.onPressed,
    this.expandToFullWidth = false,
    this.suffixIcon,
    this.prefixIcon,
    this.title = '',
    this.textOverflow,
    this.minHeight = 40,
    this.maxWidth = double.infinity,
    this.borderRadius = 8,
    this.buttonType = ButtonTypeEnum.titleOnly,
    this.baseIcon,
    this.paddingSize = PaddingSizeEnum.medium,
  });
  factory AdaptivePrimaryButton.createIconOnly({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconTitleAndIcon({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    String? title = '',
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createTitleAndIcon({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    String? title = '',
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconAndTitle({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    String? title = '',
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
    );
  }

  // Factory methods to create buttons with specific button types
  factory AdaptivePrimaryButton.createTitleOnly({
    RequestStateEnum? requestState = RequestStateEnum.initial,
    VoidCallback? onPressed,
    String? title = '',
    bool expandToFullWidth = false,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState!,
      onPressed: onPressed,
      title: title,
      expandToFullWidth: expandToFullWidth,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
    );
  }

  final RequestStateEnum requestState;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final VoidCallback? onPressed;
  final bool? expandToFullWidth;
  final String? title;
  final TextOverflow? textOverflow;
  final double minHeight;
  final double maxWidth;
  final double borderRadius;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidthContainer(
      expandToFullWidth: expandToFullWidth!,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight, maxWidth: maxWidth),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: FilledButton(
            style: getFluentButtonStyleMethod(
              context: context,
              paddingSize: paddingSize,
              borderRadius: borderRadius,
            ),
            onPressed:
                (requestState == RequestStateEnum.loading) ? null : onPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingSize.horizontalSize,
              ),
              child: AdaptiveButtonContent(
                textOverflow: textOverflow,
                requestState: requestState,
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                title: title,
                buttonType: buttonType,
                icon: baseIcon,
                paddingSize: paddingSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
