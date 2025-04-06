import 'package:fluent_ui/fluent_ui.dart';

/// ## [DarkPallet] Class Documentation
///
/// The `DarkPallet` class is a custom theme extension
/// that defines a set of dark colors for use in theming an application.
/// It allows the customization of UI components with
/// various shades of dark colors, offering flexibility
/// to create a dark mode or dark theme for your application.
///
/// ### Properties:
///
/// - **[dark900]** (`Color?`):
///   - Represents the darkest shade in the dark color palette.
///   - Defaults to `null` if not provided.
///
/// - **[dark800]** (`Color?`):
///   - A very dark shade, slightly lighter than `dark900`.
///   - Defaults to `null` if not provided.
///
/// - **[dark700]** (`Color?`):
///   - A dark shade of color.
///   - Defaults to `null` if not provided.
///
/// - **[dark600]** (`Color?`):
///   - A medium-dark shade.
///   - Defaults to `null` if not provided.
///
/// - **[dark500]** (`Color?`):
///   - A balanced dark shade.
///   - Defaults to `null` if not provided.
///
/// - **[dark400]** (`Color?`):
///   - A lighter dark shade.
///   - Defaults to `null` if not provided.
///
/// - **[dark300]** (`Color?`):
///   - A very light dark shade.
///   - Defaults to `null` if not provided.
///
/// - **[dark200]** (`Color?`):
///   - An even lighter dark shade.
///   - Defaults to `null` if not provided.
///
/// - **[dark100]** (`Color?`):
///   - A near-white shade of dark color.
///   - Defaults to `null` if not provided.
///
/// - **[dark50]** (`Color?`):
///   - The lightest dark shade, closer to white.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Allows creating a new instance of `DarkPallet`
///   by copying the current instance and
///   overriding any of the color properties.
///   - **Parameters**: Accepts optional `Color?`
///   values for each of the 10 shades.
///   - **Returns**: A new `DarkPallet` with updated properties.
///
/// - **[lerp]**:
///   - Interpolates between two `DarkPallet`
///   instances based on a given `t` factor (ranging from 0.0 to 1.0).
///   - **Parameters**:
///     - `other`: Another instance of `DarkPallet` to interpolate with.
///     - `t`: The interpolation factor
///     (0.0 for the current instance, 1.0 for the other instance).
///   - **Returns**: A new `DarkPallet` instance with interpolated color values.
///
/// - **[toString]**:
///   - Returns a string representation of
///   the `DarkPallet` instance for easy logging and debugging.
///   - **Returns**: A `String` detailing each color value in the `DarkPallet`.
///
/// - **[getByIndex]**:
///   - Retrieves a color from the palette based on the provided index.
///   - **Parameters**: `index` (int) -
///   An index representing a specific color in the palette.
///   - **Returns**: The color at the specified
///   index or throws an exception if the index is invalid.
///   - **Throws**: `Exception` if the index is out of range.
///
@immutable
class DarkPallet extends ThemeExtension<DarkPallet> {
  const DarkPallet(
      {required this.dark900,
      required this.dark800,
      required this.dark700,
      required this.dark600,
      required this.dark500,
      required this.dark400,
      required this.dark300,
      required this.dark200,
      required this.dark100,
      required this.dark50});

  final Color? dark900;
  final Color? dark800;
  final Color? dark700;
  final Color? dark600;
  final Color? dark500;
  final Color? dark400;
  final Color? dark300;
  final Color? dark200;
  final Color? dark100;
  final Color? dark50;

  @override
  DarkPallet copyWith(
      {Color? dark900,
      Color? dark800,
      Color? dark700,
      Color? dark600,
      Color? dark500,
      Color? dark400,
      Color? dark300,
      Color? dark200,
      Color? dark100,
      Color? dark50}) {
    return DarkPallet(
      dark900: dark900 ?? this.dark900,
      dark800: dark800 ?? this.dark800,
      dark700: dark700 ?? this.dark700,
      dark600: dark600 ?? this.dark600,
      dark500: dark500 ?? this.dark500,
      dark400: dark400 ?? this.dark400,
      dark300: dark300 ?? this.dark300,
      dark200: dark200 ?? this.dark200,
      dark100: dark100 ?? this.dark100,
      dark50: dark50 ?? this.dark50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  DarkPallet lerp(ThemeExtension<DarkPallet>? other, double t) {
    if (other is! DarkPallet) {
      return this;
    }
    return DarkPallet(
      dark900: Color.lerp(dark900, other.dark900, t),
      dark800: Color.lerp(dark800, other.dark800, t),
      dark700: Color.lerp(dark700, other.dark700, t),
      dark600: Color.lerp(dark600, other.dark600, t),
      dark500: Color.lerp(dark500, other.dark500, t),
      dark400: Color.lerp(dark400, other.dark400, t),
      dark300: Color.lerp(dark300, other.dark300, t),
      dark200: Color.lerp(dark200, other.dark200, t),
      dark100: Color.lerp(dark100, other.dark100, t),
      dark50: Color.lerp(dark50, other.dark50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'DarkPallet('
      'dark900:$dark900, '
      'dark800: $dark800, '
      'dark700: $dark700, '
      'dark600: $dark600, '
      'dark500: $dark500, '
      'dark400: $dark400, '
      'dark300: $dark300, '
      'dark200: $dark200, '
      'dark100: $dark100, '
      'dark50: $dark50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return dark900;
      case 9:
        return dark800;
      case 8:
        return dark700;
      case 7:
        return dark600;
      case 6:
        return dark500;
      case 5:
        return dark400;
      case 4:
        return dark300;
      case 3:
        return dark200;
      case 2:
        return dark100;
      case 1:
        return dark50;
      default:
        throw Exception('Invalid DarkPallet color index');
    }
  }

// dark theme with opacity
  static const light = DarkPallet(
    dark900: Color(0xFF1A1A1A),
    dark800: Color.fromRGBO(26, 26, 26, 0.8),
    dark700: Color.fromRGBO(26, 26, 26, 0.7),
    dark600: Color.fromRGBO(26, 26, 26, 0.6),
    dark500: Color.fromRGBO(26, 26, 26, 0.48),
    dark400: Color.fromRGBO(26, 26, 26, 0.36),
    dark300: Color.fromRGBO(26, 26, 26, 0.26),
    dark200: Color.fromRGBO(26, 26, 26, 0.18),
    dark100: Color.fromRGBO(26, 26, 26, 0.12),
    dark50: Color.fromRGBO(26, 26, 26, 0.08),
  );

  // the dark theme
  static const dark = DarkPallet(
    dark900: Color(0xFFFFFFFF),
    dark800: Color.fromRGBO(255, 255, 255, 0.8),
    dark700: Color.fromRGBO(255, 255, 255, 0.7),
    dark600: Color.fromRGBO(255, 255, 255, 0.6),
    dark500: Color.fromRGBO(255, 255, 255, 0.48),
    dark400: Color.fromRGBO(255, 255, 255, 0.36),
    dark300: Color.fromRGBO(255, 255, 255, 0.26),
    dark200: Color.fromRGBO(255, 255, 255, 0.18),
    dark100: Color.fromRGBO(255, 255, 255, 0.12),
    dark50: Color.fromRGBO(255, 255, 255, 0.08),
  );
}
