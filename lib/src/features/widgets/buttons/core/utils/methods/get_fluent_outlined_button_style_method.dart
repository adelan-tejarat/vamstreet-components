import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_styles.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';

/// ## [getFluentOutlinedButtonStyleMethod] Documentation
///
/// This method generates a `ButtonStyle` for an outlined button in Fluent UI.
///
/// ### Parameters:
///
/// - [context] (`BuildContext`):
///   - Provides the current widget context.
///
/// - [paddingSize] (`PaddingSizeEnum`):
///   - Determines the horizontal padding of the button.
///
/// - [isDefaultOutlinedButton] (`bool`):
///   - If `true`, applies a default outlined button style with predefined colors.
///
/// - [borderRadius] (`double`):
///   - Controls the corner rounding of the button's border.
///
/// ### Behavior:
///
/// - **Border Color:**
///   - Uses `AppColors.borderColor` if `isDefaultOutlinedButton` is `true`.
///   - Otherwise, applies `theme.accentColor`.
///
/// - **Foreground Color:**
///   - Uses `AppColors.primaryBlackColor` if `isDefaultOutlinedButton` is `true`.
///   - Otherwise, applies `theme.accentColor`.
///
/// - **Padding:**
///   - Applies horizontal padding based on `paddingSize.horizontalSize`.
///
/// - **Background Color:**
///   - Always set to `Colors.transparent` for an outlined appearance.
///
/// - **Elevation:**
///   - Set to `0` to maintain a flat look.
///
/// - **Shape:**
///   - Uses a `RoundedRectangleBorder` with a `10` pixel border radius.
///   - The border color and width are dynamically adjusted.
///

ButtonStyle getFluentOutlinedButtonStyleMethod({
  required BuildContext context,
  required PaddingSizeEnum paddingSize,
  required bool isDefaultOutlinedButton,
  required double borderRadius,
}) {
  final theme = AppTheme.of(context);
  final buttonColor =
      isDefaultOutlinedButton
          ? theme.extension<DarkPallet>()!.dark900!
          : theme.accentColor;

  return ButtonStyle(
    padding: WidgetStateProperty.all<EdgeInsetsDirectional?>(
      EdgeInsetsDirectional.symmetric(horizontal: paddingSize.horizontalSize),
    ),
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    foregroundColor: WidgetStateProperty.all<Color>(buttonColor),
    elevation: WidgetStateProperty.all<double>(0),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(color: buttonColor, width: 1),
      ),
    ),
  );
}
