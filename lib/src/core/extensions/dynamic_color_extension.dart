import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_styles.dart' show AppTheme;
import 'package:vamstreet_components/src/core/enum/dynamic_color_enum.dart'
    show DynamicColorEnum;
import 'package:vamstreet_components/src/core/pallets/dark_pallet.dart'
    show DarkPallet;
import 'package:vamstreet_components/src/core/pallets/on_accent_pallet.dart'
    show OnAccentPallet;

/// Extension on [BuildContext] to resolve colors dynamically
/// based on [DynamicColorEnum] values.
///
/// This allows widgets to adapt colors depending on semantic usage:
/// - `asAccentColor`: Uses the theme's accent color.
/// - `asOnAccentColor`: Uses a foreground color suitable for accent backgrounds.
/// - `asThemeMode` or `null`: Falls back to a theme-aware default (e.g., dark900).
extension DynamicColorEnumExtension on BuildContext {
  /// Resolves a [DynamicColorEnum] into an actual [Color] from the current theme context.
  ///
  /// Returns:
  /// - [AppTheme.accentColor] for `asAccentColor`
  /// - [OnAccentPallet.onAccentColor] for `asOnAccentColor`
  /// - [DarkPallet.dark900] for `asThemeMode` or `null`
  Color? fromDynamicColorType(DynamicColorEnum? dynamicColor) {
    return switch (dynamicColor) {
      DynamicColorEnum.asAccentColor => AppTheme.of(this).accentColor,
      DynamicColorEnum.asOnAccentColor =>
        AppTheme.of(this).extension<OnAccentPallet>()!.onAccentColor,
      _ => AppTheme.of(this).extension<DarkPallet>()!.dark900,
    };
  }
}
