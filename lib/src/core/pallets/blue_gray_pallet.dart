import 'package:fluent_ui/fluent_ui.dart';

/// ## [BlueGrayPallet] Class Documentation
///
/// The `BlueGrayPallet` class is a custom theme extension that defines
/// a set of blue-gray colors for use in theming an application.
/// It is used to customize the appearance of
/// various UI elements with shades of blue-gray,
/// offering a cohesive color palette for both light and dark themes.
///
/// ### Properties:
///
/// - **[blueGray900]** (`Color?`):
///   - Represents the darkest shade of the blue-gray color palette.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray800]** (`Color?`):
///   - A dark shade of blue-gray, slightly lighter than `blueGray900`.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray700]** (`Color?`):
///   - A medium-dark shade of blue-gray.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray600]** (`Color?`):
///   - A medium blue-gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray500]** (`Color?`):
///   - A balanced, neutral blue-gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray400]** (`Color?`):
///   - A lighter blue-gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray300]** (`Color?`):
///   - A light blue-gray shade, lighter than `blueGray400`.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray200]** (`Color?`):
///   - A very light blue-gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray100]** (`Color?`):
///   - A near-white shade of blue-gray.
///   - Defaults to `null` if not provided.
///
/// - **[blueGray50]** (`Color?`):
///   - The lightest shade of blue-gray, close to white.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Allows creating a new instance of `BlueGrayPallet` by
///   copying the current instance and overriding any of the color properties.
///   - **Parameters**: Accepts optional `Color?` values for
///   each of the 10 shades.
///   - **Returns**: A new `BlueGrayPallet` with updated properties.
///
/// - **[lerp]**:
///   - Interpolates between two `BlueGrayPallet` instances based on
///   a given `t` factor (ranging from 0.0 to 1.0).
///   - **Parameters**:
///     - `other`: Another instance of `BlueGrayPallet` to interpolate with.
///     - `t`: The interpolation factor (0.0 for the current instance,
///     1.0 for the other instance).
///   - **Returns**: A new `BlueGrayPallet` instance with interpolated
///   color values.
///
/// - **[toString]**:
///   - Returns a string representation of the `BlueGrayPallet`
///   instance for easy logging and debugging.
///   - **Returns**: A `String` detailing each color value in
///   the `BlueGrayPallet`.
///
/// - **[getByIndex]**:
///   - Retrieves a color from the palette based on the provided index.
///   - **Parameters**: `index` (int) - An index representing a
///   specific color in the palette.
///   - **Returns**: The color at the specified index or throws
///   an exception if the index is invalid.
///   - **Throws**: `Exception` if the index is out of range.
///

@immutable
class BlueGrayPallet extends ThemeExtension<BlueGrayPallet> {
  const BlueGrayPallet(
      {required this.blueGray900,
      required this.blueGray800,
      required this.blueGray700,
      required this.blueGray600,
      required this.blueGray500,
      required this.blueGray400,
      required this.blueGray300,
      required this.blueGray200,
      required this.blueGray100,
      required this.blueGray50});

  final Color? blueGray900;
  final Color? blueGray800;
  final Color? blueGray700;
  final Color? blueGray600;
  final Color? blueGray500;
  final Color? blueGray400;
  final Color? blueGray300;
  final Color? blueGray200;
  final Color? blueGray100;
  final Color? blueGray50;

  @override
  BlueGrayPallet copyWith(
      {Color? blueGray900,
      Color? blueGray800,
      Color? blueGray700,
      Color? blueGray600,
      Color? blueGray500,
      Color? blueGray400,
      Color? blueGray300,
      Color? blueGray200,
      Color? blueGray100,
      Color? blueGray50}) {
    return BlueGrayPallet(
      blueGray900: blueGray900 ?? this.blueGray900,
      blueGray800: blueGray800 ?? this.blueGray800,
      blueGray700: blueGray700 ?? this.blueGray700,
      blueGray600: blueGray600 ?? this.blueGray600,
      blueGray500: blueGray500 ?? this.blueGray500,
      blueGray400: blueGray400 ?? this.blueGray400,
      blueGray300: blueGray300 ?? this.blueGray300,
      blueGray200: blueGray200 ?? this.blueGray200,
      blueGray100: blueGray100 ?? this.blueGray100,
      blueGray50: blueGray50 ?? this.blueGray50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  BlueGrayPallet lerp(ThemeExtension<BlueGrayPallet>? other, double t) {
    if (other is! BlueGrayPallet) {
      return this;
    }
    return BlueGrayPallet(
      blueGray900: Color.lerp(blueGray900, other.blueGray900, t),
      blueGray800: Color.lerp(blueGray800, other.blueGray800, t),
      blueGray700: Color.lerp(blueGray700, other.blueGray700, t),
      blueGray600: Color.lerp(blueGray600, other.blueGray600, t),
      blueGray500: Color.lerp(blueGray500, other.blueGray500, t),
      blueGray400: Color.lerp(blueGray400, other.blueGray400, t),
      blueGray300: Color.lerp(blueGray300, other.blueGray300, t),
      blueGray200: Color.lerp(blueGray200, other.blueGray200, t),
      blueGray100: Color.lerp(blueGray100, other.blueGray100, t),
      blueGray50: Color.lerp(blueGray50, other.blueGray50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'BlueGrayPallet('
      'blueGray900:$blueGray900, '
      'blueGray800: $blueGray800, '
      'blueGray700: $blueGray700, '
      'blueGray600: $blueGray600, '
      'blueGray500: $blueGray500, '
      'blueGray400: $blueGray400, '
      'blueGray300: $blueGray300, '
      'blueGray200: $blueGray200, '
      'blueGray100: $blueGray100, '
      'blueGray50: $blueGray50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return blueGray900;
      case 9:
        return blueGray800;
      case 8:
        return blueGray700;
      case 7:
        return blueGray600;
      case 6:
        return blueGray500;
      case 5:
        return blueGray400;
      case 4:
        return blueGray300;
      case 3:
        return blueGray200;
      case 2:
        return blueGray100;
      case 1:
        return blueGray50;
      default:
        throw Exception('Invalid BlueGrayPallet color index');
    }
  }

  // the light theme
  static const light = BlueGrayPallet(
    blueGray900: Color(0xFF0F1729),
    blueGray800: Color(0xFF1D283A),
    blueGray700: Color(0xFF344256),
    blueGray600: Color(0xFF48566A),
    blueGray500: Color(0xFF65758B),
    blueGray400: Color(0xFF9EACC0),
    blueGray300: Color(0xFFC8D6E5),
    blueGray200: Color(0xFFE1E7EF),
    blueGray100: Color(0xFFF1F5F9),
    blueGray50: Color(0xFFF8FAFC),
  );

  // the dark theme
  static const dark = BlueGrayPallet(
    blueGray900: Color(0xFFF8FAFC),
    blueGray800: Color(0xFFE2EBF3),
    blueGray700: Color(0xFFD4DCE8),
    blueGray600: Color(0xFFB1C0D2),
    blueGray500: Color(0xFF8B9BB2),
    blueGray400: Color(0xFF5E6D82),
    blueGray300: Color(0xFF323B49),
    blueGray200: Color(0xFF252E3C),
    blueGray100: Color(0xFF1A2332),
    blueGray50: Color(0xFF0C101C),
  );
}
