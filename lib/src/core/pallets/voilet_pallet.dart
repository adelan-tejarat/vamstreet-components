import 'package:fluent_ui/fluent_ui.dart';

/// ## [VioletPallet] Class Documentation
///
/// The VioletPallet class represents a custom theme extension containing
/// various shades of violet (violet) colors.
/// It is designed to provide a gradient of violet hues for both light and dark
/// themes in a Flutter application.
///
/// ### Usage:
///
/// This class encapsulates a range of violet shades, offering flexibility
/// in how colors are applied throughout the app's UI.
/// It supports theme switching by providing pre-defined color sets for
/// both light and dark modes.
///
/// ### Properties:
///
/// - **[violet900]** (Color?): The darkest shade of violet in the palette.
/// - **[violet800]** (Color?): A slightly lighter shade of violet.
/// - **[violet700]** (Color?): A medium-dark shade of violet.
/// - **[violet600]** (Color?): A light violet shade.
/// - **[violet500]** (Color?): The base violet shade.
/// - **[violet400]** (Color?): A lighter violet shade.
/// - **[violet300]** (Color?): A soft violet hue.
/// - **[violet200]** (Color?): A very light violet shade.
/// - **[violet100]** (Color?): A pale violet shade.
/// - **[violet50]** (Color?): The lightest violet shade, nearly white.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of VioletPallet by copying the current
///   instance and replacing any provided values.
///
/// - **[lerp]**:
///   - Linearly interpolates between two VioletPallet instances based
///   on the provided factor (t).
///   - Returns a new instance of VioletPallet with colors blended between
///   the two instances.
///
/// - **[toString]**:
///   - Provides a string representation of the VioletPallet instance,
///   listing all its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index from the palette (1–10).
///   Throws an exception if the index is invalid.
///
@immutable
class VioletPallet extends ThemeExtension<VioletPallet> {
  const VioletPallet(
      {required this.violet900,
      required this.violet800,
      required this.violet700,
      required this.violet600,
      required this.violet500,
      required this.violet400,
      required this.violet300,
      required this.violet200,
      required this.violet100,
      required this.violet50});

  final Color? violet900;
  final Color? violet800;
  final Color? violet700;
  final Color? violet600;
  final Color? violet500;
  final Color? violet400;
  final Color? violet300;
  final Color? violet200;
  final Color? violet100;
  final Color? violet50;

  @override
  VioletPallet copyWith(
      {Color? violet900,
      Color? violet800,
      Color? violet700,
      Color? violet600,
      Color? violet500,
      Color? violet400,
      Color? violet300,
      Color? violet200,
      Color? violet100,
      Color? violet50}) {
    return VioletPallet(
      violet900: violet900 ?? this.violet900,
      violet800: violet800 ?? this.violet800,
      violet700: violet700 ?? this.violet700,
      violet600: violet600 ?? this.violet600,
      violet500: violet500 ?? this.violet500,
      violet400: violet400 ?? this.violet400,
      violet300: violet300 ?? this.violet300,
      violet200: violet200 ?? this.violet200,
      violet100: violet100 ?? this.violet100,
      violet50: violet50 ?? this.violet50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  VioletPallet lerp(ThemeExtension<VioletPallet>? other, double t) {
    if (other is! VioletPallet) {
      return this;
    }
    return VioletPallet(
      violet900: Color.lerp(violet900, other.violet900, t),
      violet800: Color.lerp(violet800, other.violet800, t),
      violet700: Color.lerp(violet700, other.violet700, t),
      violet600: Color.lerp(violet600, other.violet600, t),
      violet500: Color.lerp(violet500, other.violet500, t),
      violet400: Color.lerp(violet400, other.violet400, t),
      violet300: Color.lerp(violet300, other.violet300, t),
      violet200: Color.lerp(violet200, other.violet200, t),
      violet100: Color.lerp(violet100, other.violet100, t),
      violet50: Color.lerp(violet50, other.violet50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'VioletPallet('
      'violet900:$violet900, '
      'violet800: $violet800, '
      'violet700: $violet700, '
      'violet600: $violet600, '
      'violet500: $violet500, '
      'violet400: $violet400, '
      'violet300: $violet300, '
      'violet200: $violet200, '
      'violet100: $violet100, '
      'violet50: $violet50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return violet900;
      case 9:
        return violet800;
      case 8:
        return violet700;
      case 7:
        return violet600;
      case 6:
        return violet500;
      case 5:
        return violet400;
      case 4:
        return violet300;
      case 3:
        return violet200;
      case 2:
        return violet100;
      case 1:
        return violet50;
      default:
        throw Exception('Invalid VioletPallet color index');
    }
  }

  // the light theme
  static const light = VioletPallet(
    violet900: Color(0xFF230D44),
    violet800: Color(0xFF36146C),
    violet700: Color(0xFF6022C3),
    violet600: Color(0xFF7127F1),
    violet500: Color(0xFF8E4DFF),
    violet400: Color(0xFF9876F9),
    violet300: Color(0xFFB7A6FD),
    violet200: Color(0xFFDAD2FE),
    violet100: Color(0xFFE2DDFE),
    violet50: Color(0xFFF7F6FF),
  );

  // the dark theme
  static const dark = VioletPallet(
    violet900: Color(0xFFF6F5FF),
    violet800: Color(0xFFEBE7FE),
    violet700: Color(0xFFDED7FE),
    violet600: Color(0xFFC3B4FD),
    violet500: Color(0xFFA689FA),
    violet400: Color(0xFF895AF6),
    violet300: Color(0xFF7C3BED),
    violet200: Color(0xFF473493),
    violet100: Color(0xFF331362),
    violet50: Color(0xFF171330),
  );
}
