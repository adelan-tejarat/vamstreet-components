import 'package:fluent_ui/fluent_ui.dart';

/// ## [LightPallet] Class Documentation
///
/// The `LightPallet` class represents a custom color palette
/// for light and dark themes in the Fluent UI framework.
/// It provides a set of colors with various opacity levels that can
/// be used for different UI elements in light and dark themes.
///
/// ### Properties:
///
/// - **[light900]** (`Color?`):
///   - The darkest shade of the light theme color.
///   - Defaults to `null` if not provided.
///
/// - **[light800]** (`Color?`):
///   - The second darkest shade of the light theme color with a slight opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light700]** (`Color?`):
///   - The third shade of the light theme color with a medium opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light600]** (`Color?`):
///   - A lighter shade with more opacity in the light theme color.
///   - Defaults to `null` if not provided.
///
/// - **[light500]** (`Color?`):
///   - The medium-light shade with moderate opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light400]** (`Color?`):
///   - A light shade with a lower opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light300]** (`Color?`):
///   - A lighter color with reduced opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light200]** (`Color?`):
///   - A very light shade with minimal opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light100]** (`Color?`):
///   - The lightest shade with a very low opacity.
///   - Defaults to `null` if not provided.
///
/// - **[light50]** (`Color?`):
///   - The lightest possible color with the lowest opacity.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith()]**:
///   - Allows creating a copy of the current `LightPallet` instance with
///   some updated color values.
///   - Used for customizing the theme dynamically.
///
/// - **[lerp(ThemeExtension<LightPallet>? other, double t)]**:
///   - Linearly interpolates between two `LightPallet` instances based on
///   the given interpolation factor (`t`).
///   - Useful for transitioning between themes smoothly.
///
/// - **[toString()]**:
///   - Returns a string representation of the `LightPallet` instance,
///   displaying the values of the colors.
///
/// - **[getByIndex(int index)]**:
///   - Returns the color based on the provided index value,
///   which corresponds to the color shades (from `light900` to `light50`).
///
/// ### Static Constants:
///
/// - **[light]** (`LightPallet`):
///   - A static constant representing the light theme color palette
///   with full opacity.
///
/// - **[dark]** (`LightPallet`):
///   - A static constant representing the dark theme color palette
///   with full opacity.
///
@immutable
class LightPallet extends ThemeExtension<LightPallet> {
  const LightPallet(
      {required this.light900,
      required this.light800,
      required this.light700,
      required this.light600,
      required this.light500,
      required this.light400,
      required this.light300,
      required this.light200,
      required this.light100,
      required this.light50});

  final Color? light900;
  final Color? light800;
  final Color? light700;
  final Color? light600;
  final Color? light500;
  final Color? light400;
  final Color? light300;
  final Color? light200;
  final Color? light100;
  final Color? light50;

  @override
  LightPallet copyWith(
      {Color? light900,
      Color? light800,
      Color? light700,
      Color? light600,
      Color? light500,
      Color? light400,
      Color? light300,
      Color? light200,
      Color? light100,
      Color? light50}) {
    return LightPallet(
      light900: light900 ?? this.light900,
      light800: light800 ?? this.light800,
      light700: light700 ?? this.light700,
      light600: light600 ?? this.light600,
      light500: light500 ?? this.light500,
      light400: light400 ?? this.light400,
      light300: light300 ?? this.light300,
      light200: light200 ?? this.light200,
      light100: light100 ?? this.light100,
      light50: light50 ?? this.light50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  LightPallet lerp(ThemeExtension<LightPallet>? other, double t) {
    if (other is! LightPallet) {
      return this;
    }
    return LightPallet(
      light900: Color.lerp(light900, other.light900, t),
      light800: Color.lerp(light800, other.light800, t),
      light700: Color.lerp(light700, other.light700, t),
      light600: Color.lerp(light600, other.light600, t),
      light500: Color.lerp(light500, other.light500, t),
      light400: Color.lerp(light400, other.light400, t),
      light300: Color.lerp(light300, other.light300, t),
      light200: Color.lerp(light200, other.light200, t),
      light100: Color.lerp(light100, other.light100, t),
      light50: Color.lerp(light50, other.light50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'LightPallet('
      'light900:$light900, '
      'light800: $light800, '
      'light700: $light700, '
      'light600: $light600, '
      'light500: $light500, '
      'light400: $light400, '
      'light300: $light300, '
      'light200: $light200, '
      'light100: $light100, '
      'light50: $light50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return light900;
      case 9:
        return light800;
      case 8:
        return light700;
      case 7:
        return light600;
      case 6:
        return light500;
      case 5:
        return light400;
      case 4:
        return light300;
      case 3:
        return light200;
      case 2:
        return light100;
      case 1:
        return light50;
      default:
        throw Exception('Invalid LightPallet color index');
    }
  }

// Light theme with opacity
  static const light = LightPallet(
    light900: Color(0xFFFFFFFF),
    light800: Color.fromRGBO(255, 255, 255, 0.8),
    light700: Color.fromRGBO(255, 255, 255, 0.7),
    light600: Color.fromRGBO(255, 255, 255, 0.6),
    light500: Color.fromRGBO(255, 255, 255, 0.48),
    light400: Color.fromRGBO(255, 255, 255, 0.36),
    light300: Color.fromRGBO(255, 255, 255, 0.26),
    light200: Color.fromRGBO(255, 255, 255, 0.18),
    light100: Color.fromRGBO(255, 255, 255, 0.12),
    light50: Color.fromRGBO(255, 255, 255, 0.08),
  );

  // the dark theme
  static const dark = LightPallet(
    light900: Color(0xFF141414),
    light800: Color.fromRGBO(20, 20, 20, 0.8),
    light700: Color.fromRGBO(20, 20, 20, 0.7),
    light600: Color.fromRGBO(20, 20, 20, 0.6),
    light500: Color.fromRGBO(20, 20, 20, 0.48),
    light400: Color.fromRGBO(20, 20, 20, 0.36),
    light300: Color.fromRGBO(20, 20, 20, 0.26),
    light200: Color.fromRGBO(20, 20, 20, 0.18),
    light100: Color.fromRGBO(20, 20, 20, 0.12),
    light50: Color.fromRGBO(20, 20, 20, 0.08),
  );
}
