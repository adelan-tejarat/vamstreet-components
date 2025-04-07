import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/utils/methods/get_fluent_outlined_button_style_method.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

/// ## [AdaptiveSecondaryButton] Class Documentation
///
/// The `AdaptiveSecondaryButton` class is a customizable secondary button designed for various UI configurations.
/// It supports different styles, including outlined and adaptive content variations.
///
/// ### Properties:
///
/// - **[requestState]** (`RequestStateEnum`):
///   - Defines the state of the button (e.g., loading, success, failure).
///   - Determines if the button should be disabled.
///
/// - **[onPressed]** (`Function()?`):
///   - Callback function triggered when the button is pressed.
///   - Disabled if `requestState` is `loading`.
///
/// - **[suffixIcon]** (`IconData?`):
///   - An optional suffix icon displayed at the end of the button.
///
/// - **[prefixIcon]** (`IconData?`):
///   - An optional prefix icon displayed at the start of the button.
///
/// - **[title]** (`String?`):
///   - The text label of the button.
///   - Optional and used in applicable button configurations.
///
/// - [borderRadius] (`double`):
///   - Controls the corner rounding of the button's border.
///
/// - **[minHeight]** (`double`): The minimum height allowed for the button and Defaults to `32`.
///
/// - **[maxWidth]** (`double`): The maximum width allowed for the button and Defaults to `double.infinity`.
///
/// - **[textOverflow]** (`TextOverflow?`): Determines how overflowing text should be handled when the button's text content exceeds available space.
///
/// - **[buttonType]** (`ButtonTypeEnum`):
///   - Specifies the type of button (e.g., title-only, icon-only, both).
///
/// - **[baseIcon]** (`IconData?`):
///   - The primary icon used when the button is of type `iconOnly`.
///
/// - **[paddingSize]** (`PaddingSizeEnum`):
///   - Determines the padding size of the button.
///
/// - **[isDefaultOutlinedButton]** (`bool`):
///   - Specifies whether the button should use the default outlined button style.
///
/// ### Factory Methods:
///
/// - **[AdaptiveSecondaryButton.createTitleOnly]**:
///   - Creates a button with only a title.
///
/// - **[AdaptiveSecondaryButton.createIconAndTitle]**:
///   - Creates a button with a title and a leading icon.
///
/// - **[AdaptiveSecondaryButton.createTitleAndIcon]**:
///   - Creates a button with a title and a trailing icon.
///
/// - **[createIconTitleAndIcon]**:
///   - Creates a button with both leading and trailing icons along with a title.
///
/// - **[AdaptiveSecondaryButton.createIconOnly]**:
///   - Creates a button that contains only an icon.
///
class AdaptiveSecondaryButton extends StatelessWidget {
  const AdaptiveSecondaryButton({
    super.key,
    required this.requestState,
    this.onPressed,
    this.suffixIcon,
    this.prefixIcon,
    this.borderRadius = 4,
    this.minHeight = 32,
    this.textOverflow,
    this.maxWidth = double.infinity,
    this.title = '',
    required this.buttonType,
    this.baseIcon,
    required this.paddingSize,
    this.isDefaultOutlinedButton = false,
  });

  final RequestStateEnum requestState;
  final Function()? onPressed;
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
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconAndTitle({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title = '',
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight, maxWidth: maxWidth),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: OutlinedButton(
            style: getFluentOutlinedButtonStyleMethod(
              context: context,
              paddingSize: paddingSize,
              isDefaultOutlinedButton: isDefaultOutlinedButton,
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
                contentColorMode:
                    isDefaultOutlinedButton
                        ? ContentColorMode.defaultMode
                        : ContentColorMode.accentMode,
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
