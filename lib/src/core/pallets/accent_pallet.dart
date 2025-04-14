import 'package:fluent_ui/fluent_ui.dart';

@immutable
class AccentPallet extends ThemeExtension<AccentPallet> {
  const AccentPallet({
    required this.purple,
    required this.blue,
    required this.orange,
    required this.red,
    required this.teal,
    required this.lightGreen,
    required this.darkBlue,
  });

  final Color purple;
  final Color blue;
  final Color orange;
  final Color red;
  final Color teal;
  final Color lightGreen;
  final Color darkBlue;

  List<Color> get colors => [
    purple, // 0
    blue, // 1
    orange, // 2
    red, // 3
    teal, // 4
    lightGreen, // 5
    darkBlue, // 6
  ];

  Color getByIndex(int index) {
    if (index < 0 || index >= colors.length) {
      throw Exception('Invalid color index');
    }
    return colors[index];
  }

  @override
  AccentPallet copyWith({
    Color? purple,
    Color? blue,
    Color? orange,
    Color? red,
    Color? teal,
    Color? lightGreen,
    Color? darkBlue,
  }) {
    return AccentPallet(
      purple: purple ?? this.purple,
      blue: blue ?? this.blue,
      orange: orange ?? this.orange,
      red: red ?? this.red,
      teal: teal ?? this.teal,
      lightGreen: lightGreen ?? this.lightGreen,
      darkBlue: darkBlue ?? this.darkBlue,
    );
  }

  @override
  AccentPallet lerp(ThemeExtension<AccentPallet>? other, double t) {
    if (other is! AccentPallet) {
      return this;
    }
    return AccentPallet(
      purple: Color.lerp(purple, other.purple, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      red: Color.lerp(red, other.red, t)!,
      teal: Color.lerp(teal, other.teal, t)!,
      lightGreen: Color.lerp(lightGreen, other.lightGreen, t)!,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t)!,
    );
  }

  @override
  String toString() => 'AccentPallet(${colors.join(", ")})';

  static const light = AccentPallet(
    purple: Color(0xFF6F2B90),
    blue: Color(0xFF5F9EE3),
    orange: Color(0xFFFF9C60),
    red: Color(0xFFFF6673),
    teal: Color(0xFF4CD6C1),
    lightGreen: Color(0xFF4EBB4F),
    darkBlue: Color(0xFF505181),
  );

  static const dark = AccentPallet(
    purple: Color(0xFF6F2B90),
    blue: Color(0xFF093A7B),
    orange: Color(0xFF9C4700),
    red: Color(0xFF8C0E1A),
    teal: Color(0xFF007D64),
    lightGreen: Color(0xFF0A4E07),
    darkBlue: Color(0xFF0A0C1E),
  );
}
