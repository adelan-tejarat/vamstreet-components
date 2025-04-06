import 'package:fluent_ui/fluent_ui.dart';

/// ## [AppTheme] Class Documentation
///
/// The `AppTheme` class is an `InheritedWidget` used to manage and provide a consistent theme
/// throughout the application. It leverages the `FluentThemeData` for styling and is designed
/// to make theme changes accessible across the widget tree.
///
/// ### Usage:
///
/// The `AppTheme` wraps the application's widget tree and provides access to the theme via
/// the static `of` method. Widgets can use this method to retrieve the current theme configuration.
///
/// ### Properties:
///
/// - **[themeData]**:
///   - Type: `FluentThemeData`
///   - The theme data applied across the app.
///   - Passed as a required parameter to the constructor.
///
class AppTheme extends InheritedWidget {
  const AppTheme({
    required this.themeData,
    required super.child,
    super.key,
  });

  final FluentThemeData themeData;
  static FluentThemeData of(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<AppTheme>()!.themeData;
    return scope;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
