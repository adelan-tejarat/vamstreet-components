/// Defines the semantic roles for text styles used throughout the app.
///
/// Each value corresponds to a specific style defined in the app's
/// [Typography] system, enabling consistent and scalable text theming.
///
/// - [caption]: Typically used for small, secondary text like annotations or helper labels.
/// - [body]: Standard body text for general content.
/// - [bodyStrong]: Emphasized body text (e.g. bold body).
/// - [bodyLarge]: Larger body text for slightly more prominent content.
/// - [subtitle]: Used for subtitles or supporting headings.
/// - [title]: Used for section titles or emphasized labels.
/// - [titleLarge]: Larger, bold titles for key headers or card titles.
/// - [display]: Prominent display text, typically used for page headings or banners.
///
enum AppTextStyleType {
  caption,
  body,
  bodyStrong,
  bodyLarge,
  subtitle,
  title,
  titleLarge,
  display,
}
