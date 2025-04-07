import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/utils/methods/get_fluent_button_style_method.dart';

/// ## [AdaptivePrimaryButton] Class Documentation
///
/// The `AdaptivePrimaryButton` class is a customizable primary button designed to adapt to different UI requirements.
/// It supports various configurations, including text-only, icon-only, and combinations of text and icons.
///
/// ### Properties:
///
/// - **[requestState]** (`RequestStateEnum`):
///   - Defines the state of the button (e.g., loading, success, failure).
///   - Determines if the button should be disabled.
///
/// The `AdaptivePrimaryButton` is a customizable button widget designed to handle various button types based on the content (text, icons, or both). It adapts its layout and style based on different states such as loading, success, or failure. This button is particularly useful for situations where the button needs to display dynamic content, including text and icons, with adaptive behavior for different states and interactions.
///
/// ### Constructor Parameters:
/// - **[requestState]** (`RequestStateEnum`): Represents the current state of the request. It controls the button's loading state and whether the button can be pressed.
/// - **[onPressed]** (`Function()?`): The callback function to be invoked when the button is pressed.
/// - **[suffixIcon]** (`IconData?`): The icon to be displayed at the end of the button (after the title).
/// - **[prefixIcon]** (`IconData?`): The icon to be displayed at the beginning of the button (before the title).
/// - **[title]** (`String?`): The text displayed on the button.
/// - **[textOverflow]** (`TextOverflow?`): Determines how overflowing text should be handled when the button's text content exceeds available space.
/// - **[minHeight]** (`double`): The minimum height allowed for the button and Defaults to `32`.
/// - **[maxWidth]** (`double`): The maximum width allowed for the button and Defaults to `double.infinity`.
/// - **[borderRadius]** (`double`): Controls the corner rounding of the button's border.
/// - **[buttonType]** (`ButtonTypeEnum`): Specifies the type of button layout, including options like title-only, icon-and-title, and others.
/// - **[baseIcon]** (`IconData?`): The main icon to be displayed when only the icon is needed (used in the `iconOnly` button type).
/// - **[paddingSize]** (`PaddingSizeEnum`): Defines the horizontal padding size for the button content. It determines the spacing inside the button around the text and icons.
///
/// ### Factory Constructors:
/// These factory methods create `AdaptivePrimaryButton` instances with different button types:
/// - **[createTitleOnly]**: A button with only text (title).
/// - **[createIconAndTitle]**: A button with an icon before the text.
/// - **[createTitleAndIcon]**: A button with the text followed by an icon.
/// - **[createIconTitleAndIcon]**: A button with an icon before and after the text.
/// - **[createIconOnly]**: A button that only shows an icon.
///

class AdaptivePrimaryButton extends StatelessWidget {
  const AdaptivePrimaryButton({
    super.key,
    required this.requestState,
    this.onPressed,
    this.suffixIcon,
    this.prefixIcon,
    this.title = '',
    this.textOverflow,
    this.minHeight = 32,
    this.maxWidth = double.infinity,
    this.borderRadius = 4,
    required this.buttonType,
    this.baseIcon,
    required this.paddingSize,
  });

  final RequestStateEnum requestState;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final TextOverflow? textOverflow;
  final double minHeight;
  final double maxWidth;
  final double borderRadius;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;

  // Factory methods to create buttons with specific button types
  factory AdaptivePrimaryButton.createTitleOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
    );
  }

  factory AdaptivePrimaryButton.createIconAndTitle({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
    );
  }

  factory AdaptivePrimaryButton.createTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
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
