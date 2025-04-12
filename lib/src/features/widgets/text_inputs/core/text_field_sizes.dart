class TextFieldSizes {
  const TextFieldSizes({
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.startPadding = 0,
    this.endPadding = 0,
    this.suffixStartPadding = 0,
    this.borderRadios = 4,
    this.height,
    this.width,
  });
  final double? topPadding;
  final double? bottomPadding;
  final double? startPadding;
  final double? endPadding;
  final double? suffixStartPadding;
  final double? borderRadios;
  final double? height;
  final double? width;

  /// Standard material design text field sizes
  static const TextFieldSizes material = TextFieldSizes(
    topPadding: 8,
    bottomPadding: 8,
    startPadding: 12,
    endPadding: 12,
    height: 48,
  );

  /// Compact version
  static const TextFieldSizes compact = TextFieldSizes(
    topPadding: 4,
    bottomPadding: 4,
    startPadding: 8,
    endPadding: 8,
    height: 40,
  );

  /// Copy with modification
  TextFieldSizes copyWith({
    double? borderRadios,
    double? topPadding,
    double? bottomPadding,
    double? startPadding,
    double? endPadding,
    double? suffixStartPadding,
    double? height,
    double? width,
  }) {
    return TextFieldSizes(
      borderRadios: borderRadios ?? this.borderRadios,
      topPadding: topPadding ?? this.topPadding,
      bottomPadding: bottomPadding ?? this.bottomPadding,
      startPadding: startPadding ?? this.startPadding,
      endPadding: endPadding ?? this.endPadding,
      suffixStartPadding: suffixStartPadding ?? this.suffixStartPadding,
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }
}
