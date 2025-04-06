import 'package:fluent_ui/fluent_ui.dart';

/// ## [PurplePallet] Class Documentation
///
/// The PurplePallet class represents a custom theme extension containing
/// various shades of purple colors.
/// It is used to provide a set of purple colors for both light and dark themes
/// in a Flutter application.
///
/// ### Usage:
///
/// This model encapsulates a series of purple shades and provides methods for
/// retrieving and manipulating
/// these color values within the app’s theme. It can be used for both
/// light and dark modes by accessing the
/// predefined static instances.
///
/// ### Properties:
///
/// - **[purple900]** (Color?): The darkest shade of purple in the palette.
/// - **[purple800]** (Color?): A lighter shade of purple.
/// - **[purple700]** (Color?): A medium shade of purple.
/// - **[purple600]** (Color?): A relatively light shade of purple.
/// - **[purple500]** (Color?): The base purple shade.
/// - **[purple400]** (Color?): A medium-light shade of purple.
/// - **[purple300]** (Color?): A lighter shade of purple.
/// - **[purple200]** (Color?): A very light shade of purple.
/// - **[purple100]** (Color?): A pale shade of purple.
/// - **[purple50]** (Color?): The lightest purple shade, nearly white.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of PurplePallet by copying the current instance
///   and replacing any provided values.
///
/// - **[lerp]**:
///   - Linearly interpolates between two PurplePallet instances based on the
///   provided factor (t).
///   - Returns a new instance of PurplePallet with colors blended between the
///   two instances.
///
/// - **[toString]**:
///   - Provides a string representation of the PurplePallet instance,
///   listing all its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index from the palette (1–10).
///   Throws an exception if the index is invalid.
///

@immutable
class PurplePallet extends ThemeExtension<PurplePallet> {
  const PurplePallet(
      {required this.purple900,
      required this.purple800,
      required this.purple700,
      required this.purple600,
      required this.purple500,
      required this.purple400,
      required this.purple300,
      required this.purple200,
      required this.purple100,
      required this.purple50});

  final Color? purple900;
  final Color? purple800;
  final Color? purple700;
  final Color? purple600;
  final Color? purple500;
  final Color? purple400;
  final Color? purple300;
  final Color? purple200;
  final Color? purple100;
  final Color? purple50;

  @override
  PurplePallet copyWith(
      {Color? purple900,
      Color? purple800,
      Color? purple700,
      Color? purple600,
      Color? purple500,
      Color? purple400,
      Color? purple300,
      Color? purple200,
      Color? purple100,
      Color? purple50}) {
    return PurplePallet(
      purple900: purple900 ?? this.purple900,
      purple800: purple800 ?? this.purple800,
      purple700: purple700 ?? this.purple700,
      purple600: purple600 ?? this.purple600,
      purple500: purple500 ?? this.purple500,
      purple400: purple400 ?? this.purple400,
      purple300: purple300 ?? this.purple300,
      purple200: purple200 ?? this.purple200,
      purple100: purple100 ?? this.purple100,
      purple50: purple50 ?? this.purple50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  PurplePallet lerp(ThemeExtension<PurplePallet>? other, double t) {
    if (other is! PurplePallet) {
      return this;
    }
    return PurplePallet(
      purple900: Color.lerp(purple900, other.purple900, t),
      purple800: Color.lerp(purple800, other.purple800, t),
      purple700: Color.lerp(purple700, other.purple700, t),
      purple600: Color.lerp(purple600, other.purple600, t),
      purple500: Color.lerp(purple500, other.purple500, t),
      purple400: Color.lerp(purple400, other.purple400, t),
      purple300: Color.lerp(purple300, other.purple300, t),
      purple200: Color.lerp(purple200, other.purple200, t),
      purple100: Color.lerp(purple100, other.purple100, t),
      purple50: Color.lerp(purple50, other.purple50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'PurplePallet('
      'purple900:$purple900, '
      'purple800: $purple800, '
      'purple700: $purple700, '
      'purple600: $purple600, '
      'purple500: $purple500, '
      'purple400: $purple400, '
      'purple300: $purple300, '
      'purple200: $purple200, '
      'purple100: $purple100, '
      'purple50: $purple50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return purple900;
      case 9:
        return purple800;
      case 8:
        return purple700;
      case 7:
        return purple600;
      case 6:
        return purple500;
      case 5:
        return purple400;
      case 4:
        return purple300;
      case 3:
        return purple200;
      case 2:
        return purple100;
      case 1:
        return purple50;
      default:
        throw Exception('Invalid PurplePallet color index');
    }
  }

  // the light theme
  static const light = PurplePallet(
    purple900: Color(0xFF381254),
    purple800: Color(0xFF5F1E95),
    purple700: Color(0xFF7620C1),
    purple600: Color(0xFF8318E7),
    purple500: Color(0xFFA046F6),
    purple400: Color(0xFFB774FC),
    purple300: Color(0xFFD3A9FE),
    purple200: Color(0xFFEAD6FF),
    purple100: Color(0xFFF2E5FF),
    purple50: Color(0xFFFAF5FF),
  );

  // the dark theme
  static const dark = PurplePallet(
    purple900: Color(0xFFFFEFFF),
    purple800: Color(0xFFFFD6FF),
    purple700: Color(0xFFFFBCFF),
    purple600: Color(0xFFE9A0FF),
    purple500: Color(0xFFD07FFF),
    purple400: Color(0xFFAB57FF),
    purple300: Color(0xFF8B25E4),
    purple200: Color(0xFF6B1DAF),
    purple100: Color(0xFF461A66),
    purple50: Color(0xFF261236),
  );
}
