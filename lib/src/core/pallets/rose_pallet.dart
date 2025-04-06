import 'package:fluent_ui/fluent_ui.dart';

/// ## [RosePallet] Class Documentation
///
/// The RosePallet class represents a custom theme extension containing various
/// shades of rose colors.
/// It is used to provide a set of rose colors for both light and dark themes
/// in a Flutter application.
///
/// ### Usage:
///
/// This model encapsulates a series of rose shades and provides methods
/// for retrieving and manipulating
/// these color values within the app’s theme. It can be used for both
/// light and dark modes by accessing the
/// predefined static instances.
///
/// ### Properties:
///
/// - **[rose900]** (Color?): The darkest shade of rose in the palette.
/// - **[rose800]** (Color?): A slightly lighter shade of rose.
/// - **[rose700]** (Color?): A medium-dark shade of rose.
/// - **[rose600]** (Color?): A lighter rose shade.
/// - **[rose500]** (Color?): The base rose shade.
/// - **[rose400]** (Color?): A medium-light shade of rose.
/// - **[rose300]** (Color?): A light rose shade.
/// - **[rose200]** (Color?): A very light rose shade.
/// - **[rose100]** (Color?): A pale rose shade.
/// - **[rose50]** (Color?): The lightest rose shade, nearly white.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of RosePallet by copying the current instance
///   and replacing any provided values.
///
/// - **[lerp]**:
///   - Linearly interpolates between two RosePallet instances based
///   on the provided factor (t).
///   - Returns a new instance of RosePallet with colors blended between
///   the two instances.
///
/// - **[toString]**:
///   - Provides a string representation of the RosePallet instance,
///   listing all its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index from the palette (1–10).
///   Throws an exception if the index is invalid.
@immutable
class RosePallet extends ThemeExtension<RosePallet> {
  const RosePallet(
      {required this.rose900,
      required this.rose800,
      required this.rose700,
      required this.rose600,
      required this.rose500,
      required this.rose400,
      required this.rose300,
      required this.rose200,
      required this.rose100,
      required this.rose50});

  final Color? rose900;
  final Color? rose800;
  final Color? rose700;
  final Color? rose600;
  final Color? rose500;
  final Color? rose400;
  final Color? rose300;
  final Color? rose200;
  final Color? rose100;
  final Color? rose50;

  @override
  RosePallet copyWith(
      {Color? rose900,
      Color? rose800,
      Color? rose700,
      Color? rose600,
      Color? rose500,
      Color? rose400,
      Color? rose300,
      Color? rose200,
      Color? rose100,
      Color? rose50}) {
    return RosePallet(
      rose900: rose900 ?? this.rose900,
      rose800: rose800 ?? this.rose800,
      rose700: rose700 ?? this.rose700,
      rose600: rose600 ?? this.rose600,
      rose500: rose500 ?? this.rose500,
      rose400: rose400 ?? this.rose400,
      rose300: rose300 ?? this.rose300,
      rose200: rose200 ?? this.rose200,
      rose100: rose100 ?? this.rose100,
      rose50: rose50 ?? this.rose50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  RosePallet lerp(ThemeExtension<RosePallet>? other, double t) {
    if (other is! RosePallet) {
      return this;
    }
    return RosePallet(
      rose900: Color.lerp(rose900, other.rose900, t),
      rose800: Color.lerp(rose800, other.rose800, t),
      rose700: Color.lerp(rose700, other.rose700, t),
      rose600: Color.lerp(rose600, other.rose600, t),
      rose500: Color.lerp(rose500, other.rose500, t),
      rose400: Color.lerp(rose400, other.rose400, t),
      rose300: Color.lerp(rose300, other.rose300, t),
      rose200: Color.lerp(rose200, other.rose200, t),
      rose100: Color.lerp(rose100, other.rose100, t),
      rose50: Color.lerp(rose50, other.rose50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'RosePallet('
      'rose900:$rose900, '
      'rose800: $rose800, '
      'rose700: $rose700, '
      'rose600: $rose600, '
      'rose500: $rose500, '
      'rose400: $rose400, '
      'rose300: $rose300, '
      'rose200: $rose200, '
      'rose100: $rose100, '
      'rose50: $rose50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return rose900;
      case 9:
        return rose800;
      case 8:
        return rose700;
      case 7:
        return rose600;
      case 6:
        return rose500;
      case 5:
        return rose400;
      case 4:
        return rose300;
      case 3:
        return rose200;
      case 2:
        return rose100;
      case 1:
        return rose50;
      default:
        throw Exception('Invalid RosePallet color index');
    }
  }

  // the light theme
  static const light = RosePallet(
    rose900: Color(0xFF500B20),
    rose800: Color(0xFF650B24),
    rose700: Color(0xFF950E30),
    rose600: Color(0xFFCB1A41),
    rose500: Color(0xFFF33454),
    rose400: Color(0xFFFB657C),
    rose300: Color(0xFFFD9BA6),
    rose200: Color(0xFFFEC3CA),
    rose100: Color(0xFFFFE5E7),
    rose50: Color(0xFFFFF0F1),
  );

  // the dark theme
  static const dark = RosePallet(
    rose900: Color(0xFFFFF0F1),
    rose800: Color(0xFFFFE5E7),
    rose700: Color(0xFFFECDD3),
    rose600: Color(0xFFFDA5AF),
    rose500: Color(0xFFFB6F84),
    rose400: Color(0xFFF43E5C),
    rose300: Color(0xFFD11A42),
    rose200: Color(0xFFA81036),
    rose100: Color(0xFF6A0C26),
    rose50: Color(0xFF430A1B),
  );
}
