import 'package:fluent_ui/fluent_ui.dart';
import 'package:vamstreet_components/app_styles.dart';
import 'package:vamstreet_components/src/core/enum/pallet_colors_enum.dart';
import 'package:vamstreet_components/src/core/enum/pane_text_mode_enum.dart';

extension ComponentsModeExtension on BuildContext {
  /// ### [fromPalletColor]
  ///
  /// #### **Description**
  /// This extension method provides a convenient way to retrieve color values from different custom color pallets based on the specified `PalletColors` value.
  ///
  /// #### **Parameters**
  /// - **palletColors**: An instance of `PalletColors` that defines the color to be retrieved from the appropriate pallet.
  ///
  /// #### **Returns**
  /// A `Color` instance corresponding to the requested color from the specified pallet.
  ///
  Color fromPalletColor(PalletColors palletColors) {
    return (switch (palletColors) {
      // YellowPallet colors
      PalletColors.yellow50 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow50!,
      PalletColors.yellow100 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow100!,
      PalletColors.yellow200 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow200!,
      PalletColors.yellow300 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow300!,
      PalletColors.yellow400 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow400!,
      PalletColors.yellow500 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow500!,
      PalletColors.yellow600 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow600!,
      PalletColors.yellow700 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow700!,
      PalletColors.yellow800 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow800!,
      PalletColors.yellow900 =>
        AppTheme.of(this).extension<YellowPallet>()!.yellow900!,

      // VioletPallet colors
      PalletColors.violet50 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet50!,
      PalletColors.violet100 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet100!,
      PalletColors.violet200 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet200!,
      PalletColors.violet300 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet300!,
      PalletColors.violet400 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet400!,
      PalletColors.violet500 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet500!,
      PalletColors.violet600 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet600!,
      PalletColors.violet700 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet700!,
      PalletColors.violet800 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet800!,
      PalletColors.violet900 =>
        AppTheme.of(this).extension<VioletPallet>()!.violet900!,

      // RosePallet colors
      PalletColors.rose50 => AppTheme.of(this).extension<RosePallet>()!.rose50!,
      PalletColors.rose100 =>
        AppTheme.of(this).extension<RosePallet>()!.rose100!,
      PalletColors.rose200 =>
        AppTheme.of(this).extension<RosePallet>()!.rose200!,
      PalletColors.rose300 =>
        AppTheme.of(this).extension<RosePallet>()!.rose300!,
      PalletColors.rose400 =>
        AppTheme.of(this).extension<RosePallet>()!.rose400!,
      PalletColors.rose500 =>
        AppTheme.of(this).extension<RosePallet>()!.rose500!,
      PalletColors.rose600 =>
        AppTheme.of(this).extension<RosePallet>()!.rose600!,
      PalletColors.rose700 =>
        AppTheme.of(this).extension<RosePallet>()!.rose700!,
      PalletColors.rose800 =>
        AppTheme.of(this).extension<RosePallet>()!.rose800!,
      PalletColors.rose900 =>
        AppTheme.of(this).extension<RosePallet>()!.rose900!,

      // RedPallet colors
      PalletColors.red50 => AppTheme.of(this).extension<RedPallet>()!.red50!,
      PalletColors.red100 => AppTheme.of(this).extension<RedPallet>()!.red100!,
      PalletColors.red200 => AppTheme.of(this).extension<RedPallet>()!.red200!,
      PalletColors.red300 => AppTheme.of(this).extension<RedPallet>()!.red300!,
      PalletColors.red400 => AppTheme.of(this).extension<RedPallet>()!.red400!,
      PalletColors.red500 => AppTheme.of(this).extension<RedPallet>()!.red500!,
      PalletColors.red600 => AppTheme.of(this).extension<RedPallet>()!.red600!,
      PalletColors.red700 => AppTheme.of(this).extension<RedPallet>()!.red700!,
      PalletColors.red800 => AppTheme.of(this).extension<RedPallet>()!.red800!,
      PalletColors.red900 => AppTheme.of(this).extension<RedPallet>()!.red900!,

      // PurplePallet colors
      PalletColors.purple50 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple50!,
      PalletColors.purple100 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple100!,
      PalletColors.purple200 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple200!,
      PalletColors.purple300 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple300!,
      PalletColors.purple400 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple400!,
      PalletColors.purple500 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple500!,
      PalletColors.purple600 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple600!,
      PalletColors.purple700 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple700!,
      PalletColors.purple800 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple800!,
      PalletColors.purple900 =>
        AppTheme.of(this).extension<PurplePallet>()!.purple900!,

      // PinkPallet colors
      PalletColors.pink50 => AppTheme.of(this).extension<PinkPallet>()!.pink50!,
      PalletColors.pink100 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink100!,
      PalletColors.pink200 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink200!,
      PalletColors.pink300 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink300!,
      PalletColors.pink400 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink400!,
      PalletColors.pink500 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink500!,
      PalletColors.pink600 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink600!,
      PalletColors.pink700 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink700!,
      PalletColors.pink800 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink800!,
      PalletColors.pink900 =>
        AppTheme.of(this).extension<PinkPallet>()!.pink900!,

      // OrangePallet colors
      PalletColors.orange50 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange50!,
      PalletColors.orange100 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange100!,
      PalletColors.orange200 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange200!,
      PalletColors.orange300 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange300!,
      PalletColors.orange400 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange400!,
      PalletColors.orange500 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange500!,
      PalletColors.orange600 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange600!,
      PalletColors.orange700 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange700!,
      PalletColors.orange800 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange800!,
      PalletColors.orange900 =>
        AppTheme.of(this).extension<OrangePallet>()!.orange900!,

      // LightPallet colors
      PalletColors.light50 =>
        AppTheme.of(this).extension<LightPallet>()!.light50!,
      PalletColors.light100 =>
        AppTheme.of(this).extension<LightPallet>()!.light100!,
      PalletColors.light200 =>
        AppTheme.of(this).extension<LightPallet>()!.light200!,
      PalletColors.light300 =>
        AppTheme.of(this).extension<LightPallet>()!.light300!,
      PalletColors.light400 =>
        AppTheme.of(this).extension<LightPallet>()!.light400!,
      PalletColors.light500 =>
        AppTheme.of(this).extension<LightPallet>()!.light500!,
      PalletColors.light600 =>
        AppTheme.of(this).extension<LightPallet>()!.light600!,
      PalletColors.light700 =>
        AppTheme.of(this).extension<LightPallet>()!.light700!,
      PalletColors.light800 =>
        AppTheme.of(this).extension<LightPallet>()!.light800!,
      PalletColors.light900 =>
        AppTheme.of(this).extension<LightPallet>()!.light900!,

      // GreenPallet colors
      PalletColors.green50 =>
        AppTheme.of(this).extension<GreenPallet>()!.green50!,
      PalletColors.green100 =>
        AppTheme.of(this).extension<GreenPallet>()!.green100!,
      PalletColors.green200 =>
        AppTheme.of(this).extension<GreenPallet>()!.green200!,
      PalletColors.green300 =>
        AppTheme.of(this).extension<GreenPallet>()!.green300!,
      PalletColors.green400 =>
        AppTheme.of(this).extension<GreenPallet>()!.green400!,
      PalletColors.green500 =>
        AppTheme.of(this).extension<GreenPallet>()!.green500!,
      PalletColors.green600 =>
        AppTheme.of(this).extension<GreenPallet>()!.green600!,
      PalletColors.green700 =>
        AppTheme.of(this).extension<GreenPallet>()!.green700!,
      PalletColors.green800 =>
        AppTheme.of(this).extension<GreenPallet>()!.green800!,
      PalletColors.green900 =>
        AppTheme.of(this).extension<GreenPallet>()!.green900!,

      // GrayPallet colors
      PalletColors.gray50 => AppTheme.of(this).extension<GrayPallet>()!.gray50!,
      PalletColors.gray100 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray100!,
      PalletColors.gray200 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray200!,
      PalletColors.gray300 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray300!,
      PalletColors.gray400 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray400!,
      PalletColors.gray500 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray500!,
      PalletColors.gray600 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray600!,
      PalletColors.gray700 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray700!,
      PalletColors.gray800 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray800!,
      PalletColors.gray900 =>
        AppTheme.of(this).extension<GrayPallet>()!.gray900!,

      // GrayPallet colors
      PalletColors.fuchsia50 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia50!,
      PalletColors.fuchsia100 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia100!,
      PalletColors.fuchsia200 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia200!,
      PalletColors.fuchsia300 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia300!,
      PalletColors.fuchsia400 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia400!,
      PalletColors.fuchsia500 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia500!,
      PalletColors.fuchsia600 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia600!,
      PalletColors.fuchsia700 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia700!,
      PalletColors.fuchsia800 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia800!,
      PalletColors.fuchsia900 =>
        AppTheme.of(this).extension<FuchsiaPallet>()!.fuchsia900!,

      // DarkPallet colors
      PalletColors.dark50 => AppTheme.of(this).extension<DarkPallet>()!.dark50!,
      PalletColors.dark100 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark100!,
      PalletColors.dark200 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark200!,
      PalletColors.dark300 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark300!,
      PalletColors.dark400 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark400!,
      PalletColors.dark500 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark500!,
      PalletColors.dark600 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark600!,
      PalletColors.dark700 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark700!,
      PalletColors.dark800 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark800!,
      PalletColors.dark900 =>
        AppTheme.of(this).extension<DarkPallet>()!.dark900!,

      // BlueGrayPallet colors
      PalletColors.blueGray50 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray50!,
      PalletColors.blueGray100 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray100!,
      PalletColors.blueGray200 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray200!,
      PalletColors.blueGray300 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray300!,
      PalletColors.blueGray400 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray400!,
      PalletColors.blueGray500 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray500!,
      PalletColors.blueGray600 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray600!,
      PalletColors.blueGray700 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray700!,
      PalletColors.blueGray800 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray800!,
      PalletColors.blueGray900 =>
        AppTheme.of(this).extension<BlueGrayPallet>()!.blueGray900!,

      // BluePallet colors
      PalletColors.blue50 => AppTheme.of(this).extension<BluePallet>()!.blue50!,
      PalletColors.blue100 =>
        AppTheme.of(this).extension<BluePallet>()!.blue100!,
      PalletColors.blue200 =>
        AppTheme.of(this).extension<BluePallet>()!.blue200!,
      PalletColors.blue300 =>
        AppTheme.of(this).extension<BluePallet>()!.blue300!,
      PalletColors.blue400 =>
        AppTheme.of(this).extension<BluePallet>()!.blue400!,
      PalletColors.blue500 =>
        AppTheme.of(this).extension<BluePallet>()!.blue500!,
      PalletColors.blue600 =>
        AppTheme.of(this).extension<BluePallet>()!.blue600!,
      PalletColors.blue700 =>
        AppTheme.of(this).extension<BluePallet>()!.blue700!,
      PalletColors.blue800 =>
        AppTheme.of(this).extension<BluePallet>()!.blue800!,
      PalletColors.blue900 =>
        AppTheme.of(this).extension<BluePallet>()!.blue900!,
    });
  }
}

/// ### [fromPaneTextMode] Documentation
///
/// #### **Description**
/// This extension method provides a simple way to retrieve the appropriate
/// text color for `PaneNavigation` based on the given `PaneTextMode`.
///
/// #### **Parameters**
/// - **paneTextMode**: An instance of `PaneTextMode` that determines whether
///   the pane text should be in enabled or disabled mode.
///
/// #### **Returns**
/// A `Color` instance corresponding to the requested pane text mode color.
///
extension PaneNavigationModeExtension on BuildContext {
  Color fromPaneTextMode(PaneTextMode paneTextMode) {
    return switch (paneTextMode) {
      PaneTextMode.enabled =>
        AppTheme.of(this).extension<PanePallet>()!.enableColor!,
      PaneTextMode.disabled =>
        AppTheme.of(this).extension<PanePallet>()!.disableColor!,
    };
  }
}
