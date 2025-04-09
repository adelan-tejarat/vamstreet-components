/// [DynamicColorEnum] Documentation:
///
/// Enum representing different dynamic color roles
/// to be resolved contextually in the UI.
///
/// - [asAccentColor]: Uses the theme's accent (primary) color.
/// - [asOnAccentColor]: Uses a contrasting color against the accent, suitable for text/icons on accent backgrounds.
/// - [asThemeMode]: Adapts color based on current theme mode (e.g., light or dark).
///
enum DynamicColorEnum { asAccentColor, asOnAccentColor, asThemeMode }
