import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_styles.dart';

/// ## [AppThemeData] Class Documentation
///
/// The `AppThemeData` class provides a centralized definition of
/// the application's themes and typography.
/// It is designed to support both light and dark modes and uses
/// `FluentThemeData` for configuration.
///
/// ### Usage:
///
/// This class offers methods and properties to retrieve predefined
/// themes and typography for the application.
/// It also supports custom theme extensions through the use of
/// `ThemeExtension`.
///
/// ### Properties:
///
/// - **[lightExtensions]**:
///   - A collection of `ThemeExtension` objects for the light theme.
///   - Includes `BlueGrayPallet.light` and `GrayPallet.light`.
///
/// - **[darkExtensions]**:
///   - A collection of `ThemeExtension` objects for the dark theme.
///   - Includes `BlueGrayPallet.dark` and `GrayPallet.dark`.
///
/// - **[typography]**:
///   - An instance of `Typography` defining text styles for various use cases.
///   - Includes properties like `headerBold`, `titleBold`, `bodyRegular`,
///   `bodyBold`, `captionMedium`, and more.
///   - Uses `InterTextStyles` for text style definitions.
///
/// ### Methods:
///
/// - **[lightTheme]**:
///   - Returns a `FluentThemeData` instance configured for light mode.
///   - Includes light extensions and typography.
///
/// - **[darkTheme]**:
///   - Returns a `FluentThemeData` instance configured for dark mode.
///   - Includes dark extensions and typography.
///
class AppThemeData {
  AppThemeData._();
  static const Iterable<ThemeExtension<dynamic>> lightExtensions = [
    BlueGrayPallet.light,
    BluePallet.light,
    DarkPallet.light,
    FuchsiaPallet.light,
    GrayPallet.light,
    GreenPallet.light,
    LightPallet.light,
    OrangePallet.light,
    PinkPallet.light,
    PurplePallet.light,
    RedPallet.light,
    RosePallet.light,
    VioletPallet.light,
    YellowPallet.light,
    PanePallet.light,
    AccentPallet.light,
    OnAccentPallet.light,
  ];

  static const Iterable<ThemeExtension<dynamic>> darkExtensions = [
    BlueGrayPallet.dark,
    BluePallet.dark,
    DarkPallet.dark,
    FuchsiaPallet.dark,
    GrayPallet.dark,
    GreenPallet.dark,
    LightPallet.dark,
    OrangePallet.dark,
    PinkPallet.dark,
    PurplePallet.dark,
    RedPallet.dark,
    RosePallet.dark,
    VioletPallet.dark,
    YellowPallet.dark,
    PanePallet.dark,
    AccentPallet.dark,
    OnAccentPallet.dark,
  ];

  /// to-do : add a proper name for each accent color after identifying
  /// by Ui team to how and which color palette to use
  static final List<Color> lightAccentColors = [
    AccentPallet.light.blue,
    AccentPallet.light.orange,
    AccentPallet.light.red,
    AccentPallet.light.purple,
    AccentPallet.light.teal,
    AccentPallet.light.lightGreen,
    AccentPallet.light.darkBlue,
  ];

  static final List<Color> darkAccentColors = [
    AccentPallet.dark.blue,
    AccentPallet.dark.orange,
    AccentPallet.dark.red,
    AccentPallet.dark.purple,
    AccentPallet.dark.teal,
    AccentPallet.dark.lightGreen,
    AccentPallet.dark.darkBlue,
  ];

  static FluentThemeData lightTheme(Color selectedAccentColor) =>
      FluentThemeData(
        brightness: Brightness.light,
        typography: typography,
        extensions: [
          ...lightExtensions.where((ext) => ext is! OnAccentPallet),
          OnAccentPallet.lightPallet(selectedAccentColor),
        ],
        accentColor: selectedAccentColor.toAccentColor(),
      );

  static FluentThemeData darkTheme(Color selectedAccentColor) =>
      FluentThemeData(
        brightness: Brightness.dark,
        typography: typography,
        extensions: [
          ...darkExtensions.where((ext) => ext is! OnAccentPallet),
          OnAccentPallet.darkPallet(selectedAccentColor),
        ],
        accentColor: selectedAccentColor.toAccentColor(),
      );

  static Typography typography = const Typography.raw(
    caption: InterTextStyles.captionMedium,
    body: InterTextStyles.smallRegular,
    bodyStrong: InterTextStyles.bodyBold,
    bodyLarge: InterTextStyles.bodyRegular,
    subtitle: InterTextStyles.subtitleRegular,
    title: InterTextStyles.titleMedium,
    titleLarge: InterTextStyles.titleBold,
    display: InterTextStyles.headerBold,
  );
}
