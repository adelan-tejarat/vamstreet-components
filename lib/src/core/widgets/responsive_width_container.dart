import 'package:fluent_ui/fluent_ui.dart';

/// [ResponsiveWidthContainer] Class Documentation
///
/// A container widget that conditionally expands its child to take full width.
///
/// If [expandToFullWidth] is true, the [child] is rendered as-is and allowed
/// to expand to the full available width. If false, the child is wrapped in
/// an [UnconstrainedBox], allowing it to retain its natural size without
/// expanding.
///
/// This is useful when you want consistent layout behavior based on dynamic
/// conditions, such as responsiveness or user preferences.
///
class ResponsiveWidthContainer extends StatelessWidget {
  const ResponsiveWidthContainer({
    super.key,
    required this.child,
    required this.expandToFullWidth,
  });

  final Widget child;
  final bool expandToFullWidth;

  @override
  Widget build(BuildContext context) {
    return expandToFullWidth ?  child: UnconstrainedBox(child: child);
  }
}
