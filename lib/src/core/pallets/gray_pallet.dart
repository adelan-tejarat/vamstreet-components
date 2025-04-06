import 'package:fluent_ui/fluent_ui.dart';

/// ## [GrayPallet] Class Documentation
///
/// The `GrayPallet` class is a custom theme extension that defines
/// a set of gray colors for use in theming an application.
/// It offers a range of grayscale shades that can be used
/// for backgrounds, text, and other UI elements, from very light to dark gray.
///
/// ### Properties:
///
/// - **[gray900]** (`Color?`):
///   - Represents the darkest shade in the gray color palette.
///   - Defaults to `null` if not provided.
///
/// - **[gray800]** (`Color?`):
///   - A very dark gray shade, slightly lighter than `gray900`.
///   - Defaults to `null` if not provided.
///
/// - **[gray700]** (`Color?`):
///   - A medium-dark gray color.
///   - Defaults to `null` if not provided.
///
/// - **[gray600]** (`Color?`):
///   - A medium gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[gray500]** (`Color?`):
///   - A balanced gray color.
///   - Defaults to `null` if not provided.
///
/// - **[gray400]** (`Color?`):
///   - A lighter gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[gray300]** (`Color?`):
///   - A light gray color.
///   - Defaults to `null` if not provided.
///
/// - **[gray200]** (`Color?`):
///   - A very light gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[gray100]** (`Color?`):
///   - A near white gray shade.
///   - Defaults to `null` if not provided.
///
/// - **[gray50]** (`Color?`):
///   - The lightest gray shade, close to white.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of `GrayPallet` by
///   copying the current instance and overriding any of the color properties.
///   - **Parameters**: Accepts optional `Color?`
///   values for each of the 10 gray shades.
///   - **Returns**: A new `GrayPallet` with updated properties.
///
/// - **[lerp]**:
///   - Interpolates between two `GrayPallet`
///   instances based on a given interpolation factor `t` (from 0.0 to 1.0).
///   - **Parameters**:
///     - `other`: Another `GrayPallet` instance to interpolate with.
///     - `t`: The interpolation factor
///     (0.0 for the current instance, 1.0 for the other instance).
///   - **Returns**: A new `GrayPallet` instance with interpolated color values.
///
/// - **[toString]**:
///   - Provides a string representation of the `GrayPallet`
///   instance, useful for logging or debugging.
///   - **Returns**: A `String` detailing each color value
///   in the `GrayPallet`.
///
/// - **[getByIndex]**:
///   - Retrieves a color from the palette based on the provided index.
///   - **Parameters**: `index` (int) - The index representing
///   a specific color in the palette.
///   - **Returns**: The color at the specified
///   index or throws an exception if the index is invalid.
///   - **Throws**: `Exception` if the index is out of range.
///
@immutable
class GrayPallet extends ThemeExtension<GrayPallet> {
  const GrayPallet(
      {required this.gray900,
      required this.gray800,
      required this.gray700,
      required this.gray600,
      required this.gray500,
      required this.gray400,
      required this.gray300,
      required this.gray200,
      required this.gray100,
      required this.gray50});

  final Color? gray900;
  final Color? gray800;
  final Color? gray700;
  final Color? gray600;
  final Color? gray500;
  final Color? gray400;
  final Color? gray300;
  final Color? gray200;
  final Color? gray100;
  final Color? gray50;

  @override
  GrayPallet copyWith(
      {Color? gray900,
      Color? gray800,
      Color? gray700,
      Color? gray600,
      Color? gray500,
      Color? gray400,
      Color? gray300,
      Color? gray200,
      Color? gray100,
      Color? gray50}) {
    return GrayPallet(
      gray900: gray900 ?? this.gray900,
      gray800: gray800 ?? this.gray800,
      gray700: gray700 ?? this.gray700,
      gray600: gray600 ?? this.gray600,
      gray500: gray500 ?? this.gray500,
      gray400: gray400 ?? this.gray400,
      gray300: gray300 ?? this.gray300,
      gray200: gray200 ?? this.gray200,
      gray100: gray100 ?? this.gray100,
      gray50: gray50 ?? this.gray50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  GrayPallet lerp(ThemeExtension<GrayPallet>? other, double t) {
    if (other is! GrayPallet) {
      return this;
    }
    return GrayPallet(
      gray900: Color.lerp(gray900, other.gray900, t),
      gray800: Color.lerp(gray800, other.gray800, t),
      gray700: Color.lerp(gray700, other.gray700, t),
      gray600: Color.lerp(gray600, other.gray600, t),
      gray500: Color.lerp(gray500, other.gray500, t),
      gray400: Color.lerp(gray400, other.gray400, t),
      gray300: Color.lerp(gray300, other.gray300, t),
      gray200: Color.lerp(gray200, other.gray200, t),
      gray100: Color.lerp(gray100, other.gray100, t),
      gray50: Color.lerp(gray50, other.gray50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'GrayPallet('
      'gray900:$gray900, '
      'gray800: $gray800, '
      'gray700: $gray700, '
      'gray600: $gray600, '
      'gray500: $gray500, '
      'gray400: $gray400, '
      'gray300: $gray300, '
      'gray200: $gray200, '
      'gray100: $gray100, '
      'gray50: $gray50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return gray900;
      case 9:
        return gray800;
      case 8:
        return gray700;
      case 7:
        return gray600;
      case 6:
        return gray500;
      case 5:
        return gray400;
      case 4:
        return gray300;
      case 3:
        return gray200;
      case 2:
        return gray100;
      case 1:
        return gray50;
      default:
        throw Exception('Invalid GrayPallet color index');
    }
  }

  // the light theme
  static const light = GrayPallet(
    gray900: Color(0xFF1D1D20),
    gray800: Color(0xFF27272A),
    gray700: Color(0xFF3F3F46),
    gray600: Color(0xFF52525B),
    gray500: Color(0xFF7A7A83),
    gray400: Color(0xFFA1A1AA),
    gray300: Color(0xFFD0D0D4),
    gray200: Color(0xFFE1E1E2),
    gray100: Color(0xFFF4F4F5),
    gray50: Color(0xFFFCFCFC),
  );

  // the dark theme
  static const dark = GrayPallet(
    gray900: Color(0xFFEFEFEF),
    gray800: Color(0xFFD7D7D7),
    gray700: Color(0xFFB9B9B9),
    gray600: Color(0xFF9B9B9B),
    gray500: Color(0xFF878787),
    gray400: Color(0xFF747474),
    gray300: Color(0xFF5F5F5F),
    gray200: Color(0xFF3D3D3D),
    gray100: Color(0xFF333333),
    gray50: Color(0xFF231F1F),
  );
}
