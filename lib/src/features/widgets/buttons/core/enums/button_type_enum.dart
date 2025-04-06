/// ## [ButtonTypeEnum] Enum Documentation
///
/// The `ButtonTypeEnum` enum is used to define different button types based on how content is displayed within a button. This enum helps in managing the layout and structure of buttons in a UI by categorizing them into types that define the placement of icons and text.
///
/// ### Values:
/// - **[titleOnly]**: Represents a button that only contains a title (text) with no icon. Used for simple buttons that rely solely on text to convey their purpose.
/// - **[iconAndTitle]**: Represents a button where the icon is displayed before or after the title (text). This is used when both an icon and text need to be displayed, with a focus on text first, followed by the icon.
/// - **[titleAndIcon]**: Similar to `iconAndTitle`, this represents a button where the title (text) is displayed before or after the icon. The icon is secondary to the title, but both are presented in a fixed order.
/// - **[iconTitleAndIcon]**: Represents a button where the icon appears on both sides of the title. Useful when the button is designed to emphasize both the icons and text symmetrically.
/// - **[iconOnly]**: Represents a button that contains only an icon, without any accompanying text. Typically used for buttons that rely on visual cues from the icon alone (e.g., a trash can icon for delete action).
///
library;

enum ButtonTypeEnum {
  titleOnly,
  iconAndTitle,
  titleAndIcon,
  iconTitleAndIcon,
  iconOnly,
}

/// ## [ContentColorMode] Enum Documentation
///
/// Defines color modes for button content (text/icon) theming.
///
/// ### Values:
///
/// [ContentColorMode.accentMode] :
/// Uses the accent color for button content.
/// Ideal when you want content to match the app's primary accent color.
///
/// [ContentColorMode.onAccentMode] :
/// Uses the onAccent color (designed to be readable on accent-colored backgrounds).
/// Best for buttons with accent-colored backgrounds.
///
/// [ContentColorMode.defaultMode] :
/// Automatically chooses content color based on theme:
/// - Dark theme → Light content color
/// - Light theme → Dark content color
/// Provides proper contrast regardless of theme.
///
/// Example:
/// ```dart
/// ButtonStyle(
///   contentColorMode: ContentColorMode.onAccentMode,
/// )
/// ```
enum ContentColorMode { accentMode, onAccentMode, defaultMode }
