import 'package:fluent_ui/fluent_ui.dart';

/// ## [GreenPallet] Class Documentation
///
/// The `GreenPallet` class is a custom theme extension that defines a set
/// of green colors for use in theming an application.
/// It provides various green shades ranging from dark green to light green
/// that can be used for backgrounds, buttons, text, and other UI elements.
///
/// ### Properties:
///
/// - **[green900]** (`Color?`):
///   - The darkest shade of green in the palette.
///   - Defaults to `null` if not provided.
///
/// - **[green800]** (`Color?`):
///   - A very dark green, slightly lighter than `green900`.
///   - Defaults to `null` if not provided.
///
/// - **[green700]** (`Color?`):
///   - A medium-dark green color.
///   - Defaults to `null` if not provided.
///
/// - **[green600]** (`Color?`):
///   - A medium green shade.
///   - Defaults to `null` if not provided.
///
/// - **[green500]** (`Color?`):
///   - A balanced green color, typically used for primary accents.
///   - Defaults to `null` if not provided.
///
/// - **[green400]** (`Color?`):
///   - A lighter green shade.
///   - Defaults to `null` if not provided.
///
/// - **[green300]** (`Color?`):
///   - A light green color, great for highlights or secondary elements.
///   - Defaults to `null` if not provided.
///
/// - **[green200]** (`Color?`):
///   - A very light green shade, ideal for subtle backgrounds or borders.
///   - Defaults to `null` if not provided.
///
/// - **[green100]** (`Color?`):
///   - A near-white green shade, perfect for light UI elements.
///   - Defaults to `null` if not provided.
///
/// - **[green50]** (`Color?`):
///   - The lightest green, almost white, often used for
///   backgrounds or light highlights.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of `GreenPallet` by
///   copying the current instance and overriding any of the color properties.
///   - **Parameters**: Accepts optional `Color?`
///   values for each of the 10 green shades.
///   - **Returns**: A new `GreenPallet` with updated properties.
///
/// - **[lerp]**:
///   - Interpolates between two `GreenPallet`
///   instances based on a given interpolation factor `t` (from 0.0 to 1.0).
///   - **Parameters**:
///     - `other`: Another `GreenPallet` instance to interpolate with.
///     - `t`: The interpolation factor
///     (0.0 for the current instance, 1.0 for the other instance).
///   - **Returns**: A new `GreenPallet` instance with interpolated color values.
///
/// - **[toString]**:
///   - Provides a string representation of the `GreenPallet`
///   instance, useful for logging or debugging.
///   - **Returns**: A `String` detailing each color value in the `GreenPallet`.
///
/// - **[getByIndex]**:
///   - Retrieves a color from the
///   palette based on the provided index.
///   - **Parameters**: `index` (int) -
///   The index representing a specific color in the palette.
///   - **Returns**: The color at the specified index
///   or throws an exception if the index is invalid.
///   - **Throws**: `Exception` if the index is out of range.
///
@immutable
class GreenPallet extends ThemeExtension<GreenPallet> {
  const GreenPallet(
      {required this.green900,
      required this.green800,
      required this.green700,
      required this.green600,
      required this.green500,
      required this.green400,
      required this.green300,
      required this.green200,
      required this.green100,
      required this.green50});

  final Color? green900;
  final Color? green800;
  final Color? green700;
  final Color? green600;
  final Color? green500;
  final Color? green400;
  final Color? green300;
  final Color? green200;
  final Color? green100;
  final Color? green50;

  @override
  GreenPallet copyWith(
      {Color? green900,
      Color? green800,
      Color? green700,
      Color? green600,
      Color? green500,
      Color? green400,
      Color? green300,
      Color? green200,
      Color? green100,
      Color? green50}) {
    return GreenPallet(
      green900: green900 ?? this.green900,
      green800: green800 ?? this.green800,
      green700: green700 ?? this.green700,
      green600: green600 ?? this.green600,
      green500: green500 ?? this.green500,
      green400: green400 ?? this.green400,
      green300: green300 ?? this.green300,
      green200: green200 ?? this.green200,
      green100: green100 ?? this.green100,
      green50: green50 ?? this.green50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  GreenPallet lerp(ThemeExtension<GreenPallet>? other, double t) {
    if (other is! GreenPallet) {
      return this;
    }
    return GreenPallet(
      green900: Color.lerp(green900, other.green900, t),
      green800: Color.lerp(green800, other.green800, t),
      green700: Color.lerp(green700, other.green700, t),
      green600: Color.lerp(green600, other.green600, t),
      green500: Color.lerp(green500, other.green500, t),
      green400: Color.lerp(green400, other.green400, t),
      green300: Color.lerp(green300, other.green300, t),
      green200: Color.lerp(green200, other.green200, t),
      green100: Color.lerp(green100, other.green100, t),
      green50: Color.lerp(green50, other.green50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'GreenPallet('
      'green900:$green900, '
      'green800: $green800, '
      'green700: $green700, '
      'green600: $green600, '
      'green500: $green500, '
      'green400: $green400, '
      'green300: $green300, '
      'green200: $green200, '
      'green100: $green100, '
      'green50: $green50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return green900;
      case 9:
        return green800;
      case 8:
        return green700;
      case 7:
        return green600;
      case 6:
        return green500;
      case 5:
        return green400;
      case 4:
        return green300;
      case 3:
        return green200;
      case 2:
        return green100;
      case 1:
        return green50;
      default:
        throw Exception('Invalid GreenPallet color index');
    }
  }

  // the light theme
  static const light = GreenPallet(
    green900: Color(0xFF0E3F22),
    green800: Color(0xFF196636),
    green700: Color(0xFF137236),
    green600: Color(0xFF149041),
    green500: Color(0xFF18B451),
    green400: Color(0xFF30D96E),
    green300: Color(0xFF61EA94),
    green200: Color(0xFFBBF7D0),
    green100: Color(0xFFDEFCE9),
    green50: Color(0xFFF2FDF5),
  );

  // the dark theme
  static const dark = GreenPallet(
    green900: Color(0xFFF2FDF5),
    green800: Color(0xFFDEFCE9),
    green700: Color(0xFFBBF7D0),
    green600: Color(0xFF85EFAC),
    green500: Color(0xFF4ADE80),
    green400: Color(0xFF21C45D),
    green300: Color(0xFF119541),
    green200: Color(0xFF166434),
    green100: Color(0xFF14522D),
    green50: Color(0xFF0D3117),
  );
}
