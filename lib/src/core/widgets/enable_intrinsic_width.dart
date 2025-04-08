import 'package:fluent_ui/fluent_ui.dart'
    show BuildContext, IntrinsicWidth, StatelessWidget, Widget;

/// ## [EnableIntrinsicWidth] Class Documentation
///
/// The `EnableIntrinsicWidth` widget conditionally wraps its child in an [IntrinsicWidth]
/// widget based on the `expandToFullWidth` flag. It allows dynamic control over whether
/// the child should take its intrinsic width or expand fully.
///
/// ### Properties
/// - [expandToFullWidth]: If true, returns the child widget as-is (takes full width); otherwise wraps it in [IntrinsicWidth].
/// - [child]: The widget to be conditionally wrapped.
///
/// ### Behavior:
/// - When `expandToFullWidth` is `true`, it bypasses intrinsic sizing and returns the child.
/// - When `expandToFullWidth` is `false` or `null`, it wraps the child with [IntrinsicWidth] to size it based on its intrinsic dimensions.
class EnableIntrinsicWidth extends StatelessWidget {
  const EnableIntrinsicWidth({super.key, this.expandToFullWidth, this.child});

  final bool? expandToFullWidth;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return expandToFullWidth == true ? child! : IntrinsicWidth(child: child);
  }
}
