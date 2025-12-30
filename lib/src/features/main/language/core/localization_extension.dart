import 'package:flutter/material.dart';
import 'package:vamstreet_components/src/core/utils/gen/localization/codegen_loader.dart';

/// [LocalizationExtension] documentation:
/// An extension on `BuildContext` that provides localized string access with null safety.
///
/// This extension adds a `tr` method that:
/// 1. Takes a nullable String `key`
/// 2. Returns the localized string if found
/// 3. Falls back to:
///    - Original key if non-null → otherwise
///    - Empty string ('')
///
/// Usage:
/// ```dart
/// // Returns translation or empty string (never null)
/// final greeting = context.tr(LocaleKeys.hello);
/// ```
///
/// Behavior Details:
/// - Uses `Localizations.localeOf(this)` to detect current locale
/// - Looks up translations in `CodegenLoader.mapLocales` using the format:
///   `'${languageCode}_${countryCode}'` (e.g. 'en_US')
/// - Returns empty string (`''`) when:
///   - Key is null
///   - Locale not found
///   - Translation missing
extension LocalizationExtension on BuildContext {
  /// ** [tr] Method:**
  /// - `tr(String? key)`: Retrieves localized string with null safety.
  ///   - If [key] is null → returns `''`
  ///   - Checks current locale (e.g. `en_US`)
  ///   - Searches `CodegenLoader.mapLocales` for matching translation
  ///   - Returns translation if found → otherwise original [key]
  ///   - If [key] exists but translation is missing → returns [key]
  ///
  /// Example:
  /// ```dart
  /// context.tr(null);          // → ''
  /// context.tr('missing_key'); // → 'missing_key'
  /// context.tr('app_name');    // → 'MyApp' (if translated)
  /// ```
  String tr(String? key) {
    if (key == null) return '';

    final locale = Localizations.localeOf(this);
    final localeMap = CodegenLoader
        .mapLocales['${locale.languageCode}_${locale.countryCode}'];
    if (localeMap != null && localeMap.containsKey(key)) {
      return localeMap[key];
    }
    return key;
  }
}
