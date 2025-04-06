import 'package:vamstreet_components/src/core/enum/pallet_colors_enum.dart';

/// [ChipTextMode] Documentation :
/// Defines different text display modes for a chip,
/// each associated with specific background and text colors.
///
/// **Modes:**
/// - [ChipTextMode.normal] → Blue color scheme (default)
/// - [ChipTextMode.inCorrect] → Red color scheme (incorrect state)
/// - [ChipTextMode.correct] → Green color scheme (correct state)
enum ChipTextMode {
  /// Normal mode with a blue color scheme.
  normal(PalletColors.blue400, PalletColors.blue700),

  /// Incorrect mode with a red color scheme.
  inCorrect(PalletColors.red400, PalletColors.red700),

  /// Correct mode with a green color scheme.
  correct(PalletColors.green400, PalletColors.green700);

  /// Constructor to define the background and text colors.
  const ChipTextMode(this.background, this.textColor);

  final PalletColors background;
  final PalletColors textColor;
}
