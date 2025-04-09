import 'package:fluent_ui/fluent_ui.dart' show TextStyle;
import 'package:vamstreet_components/app_styles.dart' show AppThemeData;
import 'package:vamstreet_components/src/core/enum/app_text_style_type.dart'
    show AppTextStyleType;

/// Extension on [AppTextStyleType] to retrieve the corresponding [TextStyle]
/// from the app's global typography configuration.
///
/// This enables consistent and centralized text styling across the app
/// based on semantic text roles like `caption`, `body`, `title`, etc.
///
extension AppTextStyleTypeExtension on AppTextStyleType {
  /// Maps the enum value to its corresponding [TextStyle]
  /// from [AppThemeData.typography].
  ///
  /// Example:
  /// ```dart
  /// Text(
  ///   'Hello',
  ///   style: AppTextStyleType.titleLarge.style,
  /// );
  /// ```
  TextStyle get style {
    final t = AppThemeData.typography;

    return {
      AppTextStyleType.caption: t.caption,
      AppTextStyleType.body: t.body,
      AppTextStyleType.bodyStrong: t.bodyStrong,
      AppTextStyleType.bodyLarge: t.bodyLarge,
      AppTextStyleType.subtitle: t.subtitle,
      AppTextStyleType.title: t.title,
      AppTextStyleType.titleLarge: t.titleLarge,
      AppTextStyleType.display: t.display,
    }[this]!;
  }
}
