import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_scaffold.dart';
import 'package:vamstreet_components/src/core/pallets/accent_pallet.dart';
import 'package:vamstreet_components/src/core/theme/app_theme.dart';
import 'package:vamstreet_components/src/core/theme/app_theme_data.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:vamstreet_components/src/core/utils/gen/localization/app_locales.dart';
import 'package:vamstreet_components/src/core/utils/gen/localization/customized_localization_addon.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetBookApp());
}

@widgetbook.App()
class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appBuilder: (context, child) {
        return child;
      },
      addons: [
        CustomizedLocalizationAddon(
          locales: AppLocales.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          initialLocale: AppLocales.supportedLocales.first,
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.windows.laptop,
            Devices.windows.wideMonitor,
          ],
        ),
        AlignmentAddon(),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light (blue)',
              data: AppThemeData.lightTheme(AccentPallet.light.blue),
            ),
            WidgetbookTheme(
              name: 'Light (darkBlue)',
              data: AppThemeData.lightTheme(AccentPallet.light.darkBlue),
            ),
            WidgetbookTheme(
              name: 'Light (purple)',
              data: AppThemeData.lightTheme(AccentPallet.light.purple),
            ),
            WidgetbookTheme(
              name: 'Light (orange)',
              data: AppThemeData.lightTheme(AccentPallet.light.orange),
            ),
            WidgetbookTheme(
              name: 'Light (red)',
              data: AppThemeData.lightTheme(AccentPallet.light.red),
            ),
            WidgetbookTheme(
              name: 'Light (teal)',
              data: AppThemeData.lightTheme(AccentPallet.light.teal),
            ),
            WidgetbookTheme(
              name: 'Light (lightGreen)',
              data: AppThemeData.lightTheme(AccentPallet.light.lightGreen),
            ),
            WidgetbookTheme(
              name: 'Dark (blue)',
              data: AppThemeData.darkTheme(AccentPallet.dark.blue),
            ),
            WidgetbookTheme(
              name: 'Dark (darkBlue)',
              data: AppThemeData.darkTheme(AccentPallet.dark.darkBlue),
            ),
            WidgetbookTheme(
              name: 'Dark (purple)',
              data: AppThemeData.darkTheme(AccentPallet.dark.purple),
            ),
            WidgetbookTheme(
              name: 'Dark (orange)',
              data: AppThemeData.darkTheme(AccentPallet.dark.orange),
            ),
            WidgetbookTheme(
              name: 'Dark (red)',
              data: AppThemeData.darkTheme(AccentPallet.dark.red),
            ),
            WidgetbookTheme(
              name: 'Dark (teal)',
              data: AppThemeData.darkTheme(AccentPallet.dark.teal),
            ),
            WidgetbookTheme(
              name: 'Dark (lightGreen)',
              data: AppThemeData.darkTheme(AccentPallet.dark.lightGreen),
            ),
          ],
          themeBuilder: (context, data, child) {
            return FluentApp(
              debugShowCheckedModeBanner: false,
              theme: data,
              locale: Localizations.localeOf(context),
              supportedLocales: AppLocales.supportedLocales,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              home: AppTheme(themeData: data, child: AppScaffold(child: child)),
            );
          },
        ),
      ],
      directories: directories,
    );
  }
}
