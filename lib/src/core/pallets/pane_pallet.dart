import 'package:fluent_ui/fluent_ui.dart';

/// ## [PanePallet] Class Documentation
///
/// The `PanePallet` class defines a theme extension that manages the colors
/// used in the `PaneNavigation` component. It provides distinct colors
/// for enabled and disabled pane states in both light and dark themes.
///
/// ### Usage:
///
/// This class allows for centralized management of pane colors,
/// ensuring consistency across the application's theme.
/// It supports both light and dark modes with predefined static instances.
///
/// ### Properties:
///
/// - **[enableColor]** (Color?): The color used for an active pane.
/// - **[disableColor]** (Color?): The color used for an inactive pane.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of `PanePallet` by copying the current instance
///     and replacing any provided values.
///
/// - **[lerp]**:
///   - Linearly interpolates between two `PanePallet` instances
///     based on the provided factor (t).
///   - Returns a new instance with blended colors.
///
/// - **[toString]**:
///   - Provides a string representation of the `PanePallet` instance,
///     listing its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index (1 for enabled, 2 for disabled).
///   - Throws an exception if the index is invalid.
@immutable
class PanePallet extends ThemeExtension<PanePallet> {
  const PanePallet({
    required this.enableColor,
    required this.disableColor,
  });

  final Color? enableColor;
  final Color? disableColor;

  @override
  PanePallet copyWith({Color? enableColor, Color? disableColor}) {
    return PanePallet(
      enableColor: enableColor ?? this.enableColor,
      disableColor: disableColor ?? this.disableColor,
    );
  }

  // Controls how the properties change on theme changes
  @override
  PanePallet lerp(ThemeExtension<PanePallet>? other, double t) {
    if (other is! PanePallet) {
      return this;
    }
    return PanePallet(
      enableColor: Color.lerp(enableColor, other.enableColor, t),
      disableColor: Color.lerp(disableColor, other.disableColor, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'PanePallet('
      'enableColor:$enableColor, '
      'disableColor: $disableColor, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 2:
        return disableColor;
      case 1:
        return enableColor;
      default:
        throw Exception('Invalid PanePallet color index');
    }
  }

  // the light theme
  static const light = PanePallet(
    enableColor: Color(0xFF131440),
    disableColor: Color(0xFFCBC9C7),
  );

  // the dark theme
  static const dark = PanePallet(
    enableColor: Color(0xFFFFFFFF),
    disableColor: Color(0xFFC1C1C1),
  );
}
