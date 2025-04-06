import 'package:fluent_ui/fluent_ui.dart';

/// ## [BluePallet] Class Documentation
///
/// The `BluePallet` class is a custom theme extension that
/// defines a set of blue colors for use in theming an application.
/// It allows the customization of UI components with various
/// shades of blue, offering a unified color palette for
/// both light and dark themes.
///
/// ### Properties:
///
/// - **[blue900]** (`Color?`):
///   - Represents the darkest shade of the blue color palette.
///   - Defaults to `null` if not provided.
///
/// - **[blue800]** (`Color?`):
///   - A dark shade of blue, slightly lighter than `blue900`.
///   - Defaults to `null` if not provided.
///
/// - **[blue700]** (`Color?`):
///   - A medium-dark shade of blue.
///   - Defaults to `null` if not provided.
///
/// - **[blue600]** (`Color?`):
///   - A medium blue shade.
///   - Defaults to `null` if not provided.
///
/// - **[blue500]** (`Color?`):
///   - A balanced, neutral blue shade.
///   - Defaults to `null` if not provided.
///
/// - **[blue400]** (`Color?`):
///   - A lighter blue shade.
///   - Defaults to `null` if not provided.
///
/// - **[blue300]** (`Color?`):
///   - A light blue shade, lighter than `blue400`.
///   - Defaults to `null` if not provided.
///
/// - **[blue200]** (`Color?`):
///   - A very light blue shade.
///   - Defaults to `null` if not provided.
///
/// - **[blue100]** (`Color?`):
///   - A near-white shade of blue.
///   - Defaults to `null` if not provided.
///
/// - **[blue50]** (`Color?`):
///   - The lightest shade of blue, close to white.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Allows creating a new instance of `BluePallet` by copying
///   the current instance and overriding any of the color properties.
///   - **Parameters**: Accepts optional `Color?` values
///   for each of the 10 shades.
///   - **Returns**: A new `BluePallet` with updated properties.
///
/// - **[lerp]**:
///   - Interpolates between two `BluePallet` instances based on a given
///   `t` factor (ranging from 0.0 to 1.0).
///   - **Parameters**:
///     - `other`: Another instance of `BluePallet` to interpolate with.
///     - `t`: The interpolation factor (0.0 for the current instance,
///     1.0 for the other instance).
///   - **Returns**: A new `BluePallet` instance with interpolated color values.
///
/// - **[toString]**:
///   - Returns a string representation of the `BluePallet`
///   instance for easy logging and debugging.
///   - **Returns**: A `String` detailing each color value in the `BluePallet`.
///
/// - **[getByIndex]**:
///   - Retrieves a color from the palette based
///   on the provided index.
///   - **Parameters**: `index` (int) - An index
///   representing a specific color in the palette.
///   - **Returns**: The color at the specified index or
///   throws an exception if the index is invalid.
///   - **Throws**: `Exception` if the index is out of range.
///

@immutable
class BluePallet extends ThemeExtension<BluePallet> {
  const BluePallet(
      {required this.blue900,
      required this.blue800,
      required this.blue700,
      required this.blue600,
      required this.blue500,
      required this.blue400,
      required this.blue300,
      required this.blue200,
      required this.blue100,
      required this.blue50});

  final Color? blue900;
  final Color? blue800;
  final Color? blue700;
  final Color? blue600;
  final Color? blue500;
  final Color? blue400;
  final Color? blue300;
  final Color? blue200;
  final Color? blue100;
  final Color? blue50;

  @override
  BluePallet copyWith(
      {Color? blue900,
      Color? blue800,
      Color? blue700,
      Color? blue600,
      Color? blue500,
      Color? blue400,
      Color? blue300,
      Color? blue200,
      Color? blue100,
      Color? blue50}) {
    return BluePallet(
      blue900: blue900 ?? this.blue900,
      blue800: blue800 ?? this.blue800,
      blue700: blue700 ?? this.blue700,
      blue600: blue600 ?? this.blue600,
      blue500: blue500 ?? this.blue500,
      blue400: blue400 ?? this.blue400,
      blue300: blue300 ?? this.blue300,
      blue200: blue200 ?? this.blue200,
      blue100: blue100 ?? this.blue100,
      blue50: blue50 ?? this.blue50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  BluePallet lerp(ThemeExtension<BluePallet>? other, double t) {
    if (other is! BluePallet) {
      return this;
    }
    return BluePallet(
      blue900: Color.lerp(blue900, other.blue900, t),
      blue800: Color.lerp(blue800, other.blue800, t),
      blue700: Color.lerp(blue700, other.blue700, t),
      blue600: Color.lerp(blue600, other.blue600, t),
      blue500: Color.lerp(blue500, other.blue500, t),
      blue400: Color.lerp(blue400, other.blue400, t),
      blue300: Color.lerp(blue300, other.blue300, t),
      blue200: Color.lerp(blue200, other.blue200, t),
      blue100: Color.lerp(blue100, other.blue100, t),
      blue50: Color.lerp(blue50, other.blue50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'BluePallet('
      'blue900:$blue900, '
      'blue800: $blue800, '
      'blue700: $blue700, '
      'blue600: $blue600, '
      'blue500: $blue500, '
      'blue400: $blue400, '
      'blue300: $blue300, '
      'blue200: $blue200, '
      'blue100: $blue100, '
      'blue50: $blue50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return blue900;
      case 9:
        return blue800;
      case 8:
        return blue700;
      case 7:
        return blue600;
      case 6:
        return blue500;
      case 5:
        return blue400;
      case 4:
        return blue300;
      case 3:
        return blue200;
      case 2:
        return blue100;
      case 1:
        return blue50;
      default:
        throw Exception('Invalid BluePallet color index');
    }
  }

  // the light theme
  static const light = BluePallet(
    blue900: Color(0xFF0C1736),
    blue800: Color(0xFF162F82),
    blue700: Color(0xFF173FAB),
    blue600: Color(0xFF1559EA),
    blue500: Color(0xFF3479E9),
    blue400: Color(0xFF61A6FA),
    blue300: Color(0xFF91C3FD),
    blue200: Color(0xFFBEDBFE),
    blue100: Color(0xFFDCEBFE),
    blue50: Color(0xFFF2F7FF),
  );

  // the dark theme
  static const dark = BluePallet(
    blue900: Color(0xFFF0F6FF),
    blue800: Color(0xFFDCEBFE),
    blue700: Color(0xFF7AB7FF),
    blue600: Color(0xFF50A1FF),
    blue500: Color(0xFF2E88F6),
    blue400: Color(0xFF357AEA),
    blue300: Color(0xFF0F59E2),
    blue200: Color(0xFF1347CC),
    blue100: Color(0xFF0A2F85),
    blue50: Color(0xFF181D34),
  );
}
