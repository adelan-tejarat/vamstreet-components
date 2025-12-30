import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/pallets/dark_pallet.dart';
import 'package:vamstreet_components/src/core/pallets/on_accent_pallet.dart';
import 'package:vamstreet_components/src/core/theme/app_theme.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';

/// ## [ContentColorModeExtension] Extension Documentation
///
/// Provides contextual color resolution for [ContentColorMode].
///
/// ### Methods:
///
/// [getColorOfContentColorMode]:
/// Resolves the actual color value based on the current context and mode.
///
/// ```dart
/// Color getColorOfContentColorMode(ContentColorMode? contentColorMode)
/// ```
///
/// Parameters:
/// - `contentColorMode`: The color mode to resolve (nullable)
///
/// Returns:
/// - `Color`: The resolved color value
///
/// Behavior:
/// - When `accentMode`: returns `Theme.accentColor`
/// - When `defaultMode`: returns `DarkPallet.dark900`
/// - Otherwise (including null): returns `OnAccentPallet.onAccentColor`
///
/// Example:
/// ```dart
/// final color = context.getColorOfContentColorMode(selectedMode);
/// ```
extension ContentColorModeExtension on BuildContext {
  Color getColorOfContentColorMode(ContentColorMode? contentColorMode) {
    return switch (contentColorMode) {
      ContentColorMode.accentMode => AppTheme.of(this).accentColor,
      ContentColorMode.defaultMode => AppTheme.of(
        this,
      ).extension<DarkPallet>()!.dark900!,
      _ => AppTheme.of(this).extension<OnAccentPallet>()!.onAccentColor,
    };
  }
}
