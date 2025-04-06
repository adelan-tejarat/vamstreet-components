import 'package:vamstreet_components/src/core/enum/chip_text_mode.dart';

/// Provides an extension on nullable [bool] to determine the appropriate
/// [ChipTextMode] based on its value.
///
/// **Usage:**
/// ```dart
/// bool? isCorrect = true;
/// ChipTextMode mode = isCorrect.detectChipTextModeOnBoolean();
/// ```
/// - Returns [ChipTextMode.correct] if `true`
/// - Returns [ChipTextMode.inCorrect] if `false` or `null`
extension ChipTextModeExtension on bool? {
  /// Detects the [ChipTextMode] based on the boolean value.
  ChipTextMode detectChipTextModeOnBoolean() {
    return this == true ? ChipTextMode.correct : ChipTextMode.inCorrect;
  }
}
