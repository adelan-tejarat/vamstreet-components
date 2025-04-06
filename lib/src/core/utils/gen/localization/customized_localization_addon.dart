import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/widgets.dart';

/// [CustomizedLocalizationAddon] is an addon used in Widgetbook for customizing
/// the locale settings of a widget preview.
///
/// This addon allows you to:
/// - Define a list of supported locales.
/// - Specify the localization delegates for each locale.
/// - Set an initial locale (optional).
///
/// **Parameters:**
/// - [locales] : List of supported locales (e.g., `en_US`, `fr_FR`).
/// - [localizationsDelegates] : List of localization delegates to handle translations for each locale.
/// - [initialLocale] : The starting locale, which defaults to the first locale in the list if not provided.
///
/// **Usage:**
/// Add this addon to your Widgetbook setup to enable locale switching and test widgets in different languages.
///
/// Example:
/// ```dart
/// CustomizedLocalizationAddon(
///   locales: [Locale('en', 'US'), Locale('fr', 'FR')],
///   localizationsDelegates: [
///     GlobalMaterialLocalizations.delegate,
///     GlobalWidgetsLocalizations.delegate,
///   ],
///   initialLocale: Locale('en', 'US'),
/// );
/// ```
///
class CustomizedLocalizationAddon extends WidgetbookAddon<Locale> {
  CustomizedLocalizationAddon({
    required this.locales,
    required this.localizationsDelegates,
    this.initialLocale,
  })  : assert(
          locales.isNotEmpty,
          'locales cannot be empty',
        ),
        assert(
          initialLocale == null || locales.contains(initialLocale),
          'initialLocale must be in locales',
        ),
        super(
          name: 'Locale',
        );

  final Locale? initialLocale;
  final List<Locale> locales;
  final List<LocalizationsDelegate<dynamic>> localizationsDelegates;

  @override
  List<Field> get fields {
    return [
      ListField<Locale>(
        name: 'name',
        values: locales,
        initialValue: initialLocale,
        labelBuilder: (locale) => locale.toLanguageTag(),
      ),
    ];
  }

  @override
  Locale valueFromQueryGroup(Map<String, String> group) {
    return valueOf('name', group)!;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    Locale setting,
  ) {
    // This ensures that the updated locale is reflected immediately
    // It triggers a rebuild after the locale change.
    return Localizations(
      locale: setting,
      delegates: localizationsDelegates,
      child: child,
    );
  }
}
