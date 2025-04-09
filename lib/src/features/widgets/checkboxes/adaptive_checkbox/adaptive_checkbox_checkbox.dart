import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/src/core/enum/app_text_style_type.dart'
    show AppTextStyleType;
import 'package:vamstreet_components/src/core/enum/dynamic_color_enum.dart'
    show DynamicColorEnum;
import 'package:vamstreet_components/src/core/extensions/app_text_style_type.dart';
import 'package:vamstreet_components/src/core/extensions/dynamic_color_extension.dart';

/// [AdaptiveCheckbox] Documentation:
///
/// A custom checkbox widget that adapts to the app's theming and typography.
///
/// `AdaptiveCheckbox` extends the standard checkbox behavior by allowing:
/// - Dynamic text styling via [AppTextStyleType]
/// - Context-aware color resolution via [DynamicColorEnum]
/// - Optional label display with configurable style
///
/// This is useful for maintaining consistent design language across the app
/// while supporting theme adaptability and semantic typography.
///
/// ### Parameters:
/// - [checked]: Whether the checkbox is selected.
/// - [onChanged]: Callback when the checkbox value changes.
/// - [label]: Optional text label displayed next to the checkbox.
/// - [appTextStyleType]: The style used for the label, defaults to [AppTextStyleType.caption].
/// - [dynamicColor]: Optional color role used to resolve text color based on theme context.
///
class AdaptiveCheckbox extends StatelessWidget {
  final bool? checked;
  final ValueChanged<bool?>? onChanged;
  final String? label;
  final AppTextStyleType? appTextStyleType;
  final DynamicColorEnum? dynamicColor;

  const AdaptiveCheckbox({
    super.key,
    required this.checked,
    required this.onChanged,
    this.label,
    this.appTextStyleType = AppTextStyleType.caption,
    this.dynamicColor,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checked: checked,
      onChanged: onChanged,
      content: Text(
        label ?? '',
        style: appTextStyleType!.style.copyWith(
          color: context.fromDynamicColorType(dynamicColor),
        ),
      ),
    );
  }
}
