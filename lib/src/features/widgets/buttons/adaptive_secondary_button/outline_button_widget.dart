import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:vamstreet_components/app_styles.dart' show AppTheme;
import 'package:vamstreet_components/src/core/bloc/button_color_cubit.dart'
    show ButtonColorCubit;
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

class OutlineButtonWidget extends StatefulWidget {
  const OutlineButtonWidget({
    super.key,
    required this.paddingSize,
    required this.buttonColor,
    required this.borderRadius,
    required this.requestState,
    required this.onPressed,
    required this.textOverflow,
    required this.isDefaultOutlinedButton,
    required this.suffixIcon,
    required this.prefixIcon,
    required this.title,
    required this.buttonType,
    required this.baseIcon,
  });

  final PaddingSizeEnum paddingSize;
  final Color buttonColor;
  final double borderRadius;
  final RequestStateEnum requestState;
  final VoidCallback? onPressed;
  final TextOverflow? textOverflow;
  final bool isDefaultOutlinedButton;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;

  @override
  State<OutlineButtonWidget> createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
  late final ButtonColorCubit _colorCubit;

  @override
  void initState() {
    super.initState();
    _colorCubit = ButtonColorCubit(widget.buttonColor);
  }

  @override
  void dispose() {
    _colorCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return BlocBuilder<ButtonColorCubit, Color>(
      bloc: _colorCubit,
      builder: (context, colorState) {
        return OutlinedButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.all<EdgeInsetsDirectional?>(
              EdgeInsetsDirectional.symmetric(
                horizontal: widget.paddingSize.horizontalSize,
              ),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
            elevation: WidgetStateProperty.all<double>(0),
            shape: WidgetStateProperty.resolveWith<RoundedRectangleBorder>((
              states,
            ) {
              if (states.isDisabled) {
                final color = theme.inactiveColor;
                _colorCubit.updateColor(color.toAccentColor());
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  side: BorderSide(color: color, width: 1),
                );
              }
              if (states.isPressed) {
                final color = widget.buttonColor.toAccentColor().darkest;
                _colorCubit.updateColor(color);
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  side: BorderSide(color: color, width: 1),
                );
              }
              if (states.isHovered) {
                final color = widget.buttonColor.toAccentColor().dark;
                _colorCubit.updateColor(color);
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  side: BorderSide(color: color, width: 1.2),
                );
              }
              final color = widget.buttonColor.toAccentColor();
              _colorCubit.updateColor(color);
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                side: BorderSide(color: color, width: 1),
              );
            }),
          ),
          onPressed: (widget.requestState == RequestStateEnum.loading)
              ? null
              : widget.onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: widget.paddingSize.horizontalSize,
            ),
            child: AdaptiveButtonContent(
              textOverflow: widget.textOverflow,
              requestState: widget.requestState,
              contentColorMode: widget.isDefaultOutlinedButton
                  ? ContentColorMode.defaultMode
                  : ContentColorMode.accentMode,
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              title: widget.title,
              colorOfButton: colorState,
              buttonType: widget.buttonType,
              icon: widget.baseIcon,
              paddingSize: widget.paddingSize,
            ),
          ),
        );
      },
    );
  }
}
