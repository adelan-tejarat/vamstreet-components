import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/pallets/on_accent_pallet.dart';
import 'package:vamstreet_components/src/core/theme/app_theme.dart';

/// ## [getFluentButtonStyleMethod] Function Documentation
///
/// The `getFluentButtonStyleMethod` function is used to generate a `ButtonStyle` for a Fluent UI button. The style adapts to various states and properties, such as padding size, outlined state, and button state (pressed, hovered, disabled). This function enables easy and dynamic customization of button styles based on the button's state and configuration.
///
/// ### Purpose:
/// The purpose of this function is to return a `ButtonStyle` object that controls how a button appears and behaves visually based on its state (pressed, hovered, disabled) and the provided configuration (outlined, padding size).
///
/// ### Parameters:
/// - [context] (`BuildContext`): The context is used to access the app's theme for applying consistent colors and styles.
/// - [paddingSize] (`PaddingSizeEnum`): Specifies the amount of padding to apply horizontally inside the button. This affects the layout of the button content.
/// - [borderRadius] (`double`): Controls the corner rounding of the button's border.
/// ### Function Logic:
/// - **Padding**: The padding is set based on the provided `paddingSize`. The horizontal padding is determined by the value of `paddingSize.horizontalSize`.
/// - **Background Color**: The background color of the button changes based on the button state (hovered, pressed, disabled, or default). If the button is outlined, the background is transparent.
/// - **Foreground Color**: The foreground color (typically text and icon color) changes depending on the button state (disabled or active). If the button is outlined, the foreground color will be the accent color (lighter).
/// - **Elevation**: When the button is pressed, it has an elevation of `8.0` to simulate a raised effect. Otherwise, it has no elevation.
/// - **Shape**: The button has a rounded rectangular shape with a border radius of `10`. If the button is outlined, the border has a width of `1` and the accent color of the theme is used for the border.
///
/// ### State Changes:
/// - **Hovered**: The button's background color becomes darker when hovered.
/// - **Pressed**: The button's background color becomes even darker and the elevation increases when pressed.
/// - **Disabled**: When the button is disabled, its background and foreground colors are adjusted to indicate the disabled state.
///
ButtonStyle getFluentButtonStyleMethod({
  required BuildContext context,
  required PaddingSizeEnum paddingSize,
  required double borderRadius,
}) {
  final theme = AppTheme.of(context);

  return ButtonStyle(
    padding: WidgetStateProperty.all<EdgeInsetsDirectional?>(
        EdgeInsetsDirectional.symmetric(
            horizontal: paddingSize.horizontalSize)),
    backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.isDisabled) {
        return theme.accentColor.darkest;
      }
      if (states.isPressed) {
        return theme.accentColor.darker;
      }
      if (states.isHovered) {
        return theme.accentColor.dark;
      }
      return theme.accentColor;
    }),
    foregroundColor: WidgetStateProperty.all<Color?>(
      AppTheme.of(context).extension<OnAccentPallet>()!.onAccentColor,
    ),
    elevation: WidgetStateProperty.resolveWith<double>((states) {
      if (states.isPressed) {
        return 8.0;
      }
      return 0.0;
    }),
    shape: WidgetStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    )),
  );
}
