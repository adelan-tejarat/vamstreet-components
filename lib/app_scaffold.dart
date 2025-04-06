import 'package:flutter/material.dart';
import 'package:vamstreet_components/src/core/theme/app_theme.dart';

/// ## [AppScaffold] Class Documentation
///
/// The `AppScaffold` class is a custom widget that serves as a basic
/// container for wrapping other widgets in a consistent layout structure.
///
/// ### Usage:
///
/// `AppScaffold` provides a basic structure for
/// the UI by settingthe background color
/// of the scaffold and wrapping the child widget passed to it.
///
/// ### Properties:
///
/// - **[child]** (Widget):
///   - A required child widget that will be displayed inside the scaffold.
///   - The `child` widget is passed down as a parameter to the `AppScaffold`
///   constructor and is rendered within the container.
///
/// ### Methods:
///
/// - **[build(BuildContext context)]**:
///   - Builds the widget tree by applying the scaffold background color
///   and placing the `child` widget inside the container.
///

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          color: AppTheme.of(context).scaffoldBackgroundColor,
        ),
        child: Center(child: child),
      ),
    );
  }
}
