import 'dart:ui' show Locale;

/// [CodegenLoader] class loads translations for different locales.
///
/// - [load] : Loads translation data based on the provided locale.
/// - [mapLocales] : Maps locales (e.g., `en_US`, `fr_FR`, `es_ES`) to their respective translation data.
///
/// Example translations include:
/// - `enUS`: English translations.
/// - `frFR`: French translations.
/// - `esES`: Spanish translations.
///
class CodegenLoader {
  const CodegenLoader();

  Future<Map<String, dynamic>?> load(
    String path,
    Map<String, dynamic> localeMap,
  ) {
    return Future.value(
      mapLocales["${Locale(localeMap["language"], localeMap["country"])}"],
    );
  }

  static const Map<String, dynamic> enUS = {
    'app_name': 'Pactus GUI (EN)',
    'man': 'Man',
    'woman': 'Woman',
  };
  static const Map<String, dynamic> frFR = {
    'app_name': 'Pactus GUI (FR)',
    'man': 'Homme',
    'woman': 'Femme',
  };
  static const Map<String, dynamic> esES = {
    'app_name': 'Pactus GUI (ES)',
    'man': 'Hombre',
    'woman': 'Mujer',
  };

  static const Map<String, Map<String, dynamic>> mapLocales = {
    'en_US': enUS,
    'fr_FR': frFR,
    'es_ES': esES,
  };
}
