import 'package:fluent_ui/fluent_ui.dart';

/// ## [PinkPallet] Class Documentation
///
/// The `PinkPallet` class represents a custom color palette designed around
/// various shades of pink.
/// It provides different opacity levels of pink hues intended for use in
/// UI design, supporting both light and dark themes.
///
/// ### Properties:
///
/// - **[pink900]** (`Color?`):
///   - The darkest shade of pink.
///   - Defaults to `null` if not provided.
///
/// - **[pink800]** (`Color?`):
///   - The second darkest shade of pink with some opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink700]** (`Color?`):
///   - A medium-dark shade of pink with opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink600]** (`Color?`):
///   - A lighter shade of pink with some opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink500]** (`Color?`):
///   - A medium-light pink shade with moderate opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink400]** (`Color?`):
///   - A lighter shade of pink with reduced opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink300]** (`Color?`):
///   - A very light pink shade with minimal opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink200]** (`Color?`):
///   - A pale pink shade with low opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink100]** (`Color?`):
///   - A very pale pink shade with very low opacity.
///   - Defaults to `null` if not provided.
///
/// - **[pink50]** (`Color?`):
///   - The lightest pink shade with the least opacity.
///   - Defaults to `null` if not provided.
///
/// ### Methods:
///
/// - **[copyWith()]**:
///   - Creates a copy of the `PinkPallet` instance with optional
///   modifications to color values.
///   - Useful for customizing the theme dynamically.
///
/// - **[lerp(ThemeExtension<PinkPallet>? other, double t)]**:
///   - Linearly interpolates between two `PinkPallet` instances based
///   on the interpolation factor (`t`).
///   - Useful for smooth transitions between theme states.
///
/// - **[toString()]**:
///   - Returns a string representation of the `PinkPallet` instance,
///   displaying the values of the colors.
///
/// - **[getByIndex(int index)]**:
///   - Returns the color corresponding to the given index
///   (from `pink900` to `pink50`).
///   - Helps in retrieving specific shades by index.
///
/// ### Static Constants:
///
/// - **[light]** (`PinkPallet`):
///   - A static constant representing the light theme color palette,
///   providing a range of pink shades with various opacity levels.
///
/// - **[dark]** (`PinkPallet`):
///   - A static constant representing the dark theme color palette,
///   with rich pink shades and opacity variations.
///
@immutable
class PinkPallet extends ThemeExtension<PinkPallet> {
  const PinkPallet(
      {required this.pink900,
      required this.pink800,
      required this.pink700,
      required this.pink600,
      required this.pink500,
      required this.pink400,
      required this.pink300,
      required this.pink200,
      required this.pink100,
      required this.pink50});

  final Color? pink900;
  final Color? pink800;
  final Color? pink700;
  final Color? pink600;
  final Color? pink500;
  final Color? pink400;
  final Color? pink300;
  final Color? pink200;
  final Color? pink100;
  final Color? pink50;

  @override
  PinkPallet copyWith(
      {Color? pink900,
      Color? pink800,
      Color? pink700,
      Color? pink600,
      Color? pink500,
      Color? pink400,
      Color? pink300,
      Color? pink200,
      Color? pink100,
      Color? pink50}) {
    return PinkPallet(
      pink900: pink900 ?? this.pink900,
      pink800: pink800 ?? this.pink800,
      pink700: pink700 ?? this.pink700,
      pink600: pink600 ?? this.pink600,
      pink500: pink500 ?? this.pink500,
      pink400: pink400 ?? this.pink400,
      pink300: pink300 ?? this.pink300,
      pink200: pink200 ?? this.pink200,
      pink100: pink100 ?? this.pink100,
      pink50: pink50 ?? this.pink50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  PinkPallet lerp(ThemeExtension<PinkPallet>? other, double t) {
    if (other is! PinkPallet) {
      return this;
    }
    return PinkPallet(
      pink900: Color.lerp(pink900, other.pink900, t),
      pink800: Color.lerp(pink800, other.pink800, t),
      pink700: Color.lerp(pink700, other.pink700, t),
      pink600: Color.lerp(pink600, other.pink600, t),
      pink500: Color.lerp(pink500, other.pink500, t),
      pink400: Color.lerp(pink400, other.pink400, t),
      pink300: Color.lerp(pink300, other.pink300, t),
      pink200: Color.lerp(pink200, other.pink200, t),
      pink100: Color.lerp(pink100, other.pink100, t),
      pink50: Color.lerp(pink50, other.pink50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'PinkPallet('
      'pink900:$pink900, '
      'pink800: $pink800, '
      'pink700: $pink700, '
      'pink600: $pink600, '
      'pink500: $pink500, '
      'pink400: $pink400, '
      'pink300: $pink300, '
      'pink200: $pink200, '
      'pink100: $pink100, '
      'pink50: $pink50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return pink900;
      case 9:
        return pink800;
      case 8:
        return pink700;
      case 7:
        return pink600;
      case 6:
        return pink500;
      case 5:
        return pink400;
      case 4:
        return pink300;
      case 3:
        return pink200;
      case 2:
        return pink100;
      case 1:
        return pink50;
      default:
        throw Exception('Invalid PinkPallet color index');
    }
  }

  // the light theme
  static const light = PinkPallet(
    pink900: Color(0xFF520F2A),
    pink800: Color(0xFF660F32),
    pink700: Color(0xFF9F144D),
    pink600: Color(0xFFDA2576),
    pink500: Color(0xFFEC4B9C),
    pink400: Color(0xFFF471B5),
    pink300: Color(0xFFF9A9D5),
    pink200: Color(0xFFFBD0E8),
    pink100: Color(0xFFFCE8F4),
    pink50: Color(0xFFFDF2F8),
  );

  // the dark theme
  static const dark = PinkPallet(
    pink900: Color(0xFFFDF2F8),
    pink800: Color(0xFFFCE8F4),
    pink700: Color(0xFFFBD0E8),
    pink600: Color(0xFFF9A9D5),
    pink500: Color(0xFFF471B5),
    pink400: Color(0xFFEC4699),
    pink300: Color(0xFFC4216A),
    pink200: Color(0xFFA3144F),
    pink100: Color(0xFF660F32),
    pink50: Color(0xFF450D23),
  );
}
