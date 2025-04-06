import 'package:fluent_ui/fluent_ui.dart';

/// ## [FuchsiaPallet] Class Documentation
///
/// The `FuchsiaPallet` class is a custom theme extension that defines
/// a set of fuchsia (purple-pink) colors for use in theming an application.
/// This allows the creation of a unique color palette with shades
/// ranging from dark to light fuchsia, perfect for crafting vibrant,
/// customized UIs.
///
/// ### Properties:
///
/// - **[fuchsia900]** (`Color?`):
///   - Represents the darkest shade in the fuchsia color palette.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia800]** (`Color?`):
///   - A very dark shade, slightly lighter than `fuchsia900`.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia700]** (`Color?`):
///   - A dark shade of fuchsia color.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia600]** (`Color?`):
///   - A medium-dark shade.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia500]** (`Color?`):
///   - A balanced fuchsia shade.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia400]** (`Color?`):
///   - A lighter shade of fuchsia.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia300]** (`Color?`):
///   - A medium-light shade of fuchsia.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia200]** (`Color?`):
///   - A light shade of fuchsia.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia100]** (`Color?`):
///   - A very light shade of fuchsia, close to pastel.
///   - Defaults to `null` if not provided.
///
/// - **[fuchsia50]** (`Color?`):
///   - The lightest fuchsia shade, almost white.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of `FuchsiaPallet` by
///   copying the current instance and overriding any of the color properties.
///   - **Parameters**: Accepts optional `Color?`
///   values for each of the 10 fuchsia shades.
///   - **Returns**: A new `FuchsiaPallet` with updated properties.
///
/// - **[lerp]**:
///   - Interpolates between two `FuchsiaPallet`
///   instances based on a given interpolation factor `t` (from 0.0 to 1.0).
///   - **Parameters**:
///     - `other`: Another `FuchsiaPallet` instance to interpolate with.
///     - `t`: The interpolation factor
///     (0.0 for the current instance, 1.0 for the other instance).
///   - **Returns**: A new `FuchsiaPallet`
///   instance with interpolated color values.
///
/// - **[toString]**:
///   - Provides a string representation of the `FuchsiaPallet`
///   instance, useful for logging or debugging.
///   - **Returns**: A `String` detailing each color value
///   in the `FuchsiaPallet`.
///
/// - **[getByIndex]**:
///   - Retrieves a color from the palette based on the provided index.
///   - **Parameters**: `index` (int) - The index representing
///   a specific color in the palette.
///   - **Returns**: The color at the specified index or
///   throws an exception if the index is invalid.
///   - **Throws**: `Exception` if the index is out of range.
@immutable
class FuchsiaPallet extends ThemeExtension<FuchsiaPallet> {
  const FuchsiaPallet(
      {required this.fuchsia900,
      required this.fuchsia800,
      required this.fuchsia700,
      required this.fuchsia600,
      required this.fuchsia500,
      required this.fuchsia400,
      required this.fuchsia300,
      required this.fuchsia200,
      required this.fuchsia100,
      required this.fuchsia50});

  final Color? fuchsia900;
  final Color? fuchsia800;
  final Color? fuchsia700;
  final Color? fuchsia600;
  final Color? fuchsia500;
  final Color? fuchsia400;
  final Color? fuchsia300;
  final Color? fuchsia200;
  final Color? fuchsia100;
  final Color? fuchsia50;

  @override
  FuchsiaPallet copyWith(
      {Color? fuchsia900,
      Color? fuchsia800,
      Color? fuchsia700,
      Color? fuchsia600,
      Color? fuchsia500,
      Color? fuchsia400,
      Color? fuchsia300,
      Color? fuchsia200,
      Color? fuchsia100,
      Color? fuchsia50}) {
    return FuchsiaPallet(
      fuchsia900: fuchsia900 ?? this.fuchsia900,
      fuchsia800: fuchsia800 ?? this.fuchsia800,
      fuchsia700: fuchsia700 ?? this.fuchsia700,
      fuchsia600: fuchsia600 ?? this.fuchsia600,
      fuchsia500: fuchsia500 ?? this.fuchsia500,
      fuchsia400: fuchsia400 ?? this.fuchsia400,
      fuchsia300: fuchsia300 ?? this.fuchsia300,
      fuchsia200: fuchsia200 ?? this.fuchsia200,
      fuchsia100: fuchsia100 ?? this.fuchsia100,
      fuchsia50: fuchsia50 ?? this.fuchsia50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  FuchsiaPallet lerp(ThemeExtension<FuchsiaPallet>? other, double t) {
    if (other is! FuchsiaPallet) {
      return this;
    }
    return FuchsiaPallet(
      fuchsia900: Color.lerp(fuchsia900, other.fuchsia900, t),
      fuchsia800: Color.lerp(fuchsia800, other.fuchsia800, t),
      fuchsia700: Color.lerp(fuchsia700, other.fuchsia700, t),
      fuchsia600: Color.lerp(fuchsia600, other.fuchsia600, t),
      fuchsia500: Color.lerp(fuchsia500, other.fuchsia500, t),
      fuchsia400: Color.lerp(fuchsia400, other.fuchsia400, t),
      fuchsia300: Color.lerp(fuchsia300, other.fuchsia300, t),
      fuchsia200: Color.lerp(fuchsia200, other.fuchsia200, t),
      fuchsia100: Color.lerp(fuchsia100, other.fuchsia100, t),
      fuchsia50: Color.lerp(fuchsia50, other.fuchsia50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'FuchsiaPallet('
      'fuchsia900:$fuchsia900, '
      'fuchsia800: $fuchsia800, '
      'fuchsia700: $fuchsia700, '
      'fuchsia600: $fuchsia600, '
      'fuchsia500: $fuchsia500, '
      'fuchsia400: $fuchsia400, '
      'fuchsia300: $fuchsia300, '
      'fuchsia200: $fuchsia200, '
      'fuchsia100: $fuchsia100, '
      'fuchsia50: $fuchsia50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return fuchsia900;
      case 9:
        return fuchsia800;
      case 8:
        return fuchsia700;
      case 7:
        return fuchsia600;
      case 6:
        return fuchsia500;
      case 5:
        return fuchsia400;
      case 4:
        return fuchsia300;
      case 3:
        return fuchsia200;
      case 2:
        return fuchsia100;
      case 1:
        return fuchsia50;
      default:
        throw Exception('Invalid FuchsiaPallet color index');
    }
  }

  // the light theme
  static const light = FuchsiaPallet(
    fuchsia900: Color(0xFF400F43),
    fuchsia800: Color(0xFF611268),
    fuchsia700: Color(0xFF8B1995),
    fuchsia600: Color(0xFFB725CA),
    fuchsia500: Color(0xFFD73FEE),
    fuchsia400: Color(0xFFE66DF8),
    fuchsia300: Color(0xFFED9DFB),
    fuchsia200: Color(0xFFF3C8FE),
    fuchsia100: Color(0xFFF9E5FF),
    fuchsia50: Color(0xFFFDF5FF),
  );

  // the dark theme
  static const dark = FuchsiaPallet(
    fuchsia900: Color(0xFFFDF5FF),
    fuchsia800: Color(0xFFF9E5FF),
    fuchsia700: Color(0xFFF5D2FE),
    fuchsia600: Color(0xFFF0ABFC),
    fuchsia500: Color(0xFFE87BF9),
    fuchsia400: Color(0xFFD535ED),
    fuchsia300: Color(0xFFA421B5),
    fuchsia200: Color(0xFF7A1683),
    fuchsia100: Color(0xFF591160),
    fuchsia50: Color(0xFF330836),
  );
}
