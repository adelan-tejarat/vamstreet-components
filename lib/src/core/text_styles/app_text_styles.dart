import 'package:flutter/material.dart' show FontWeight, TextStyle;

/// ## [AppTextStyles] Class Documentation
///
/// The `AppTextStyles` class defines a set of predefined text styles using the "IRANSansMobile" font family.
/// It provides various text styles that can be used throughout the application to ensure consistency in typography.
///
/// ### Usage:
///
/// This class contains multiple predefined text styles categorized by font weight and size,
/// with precise line-height values calculated from design specifications.
///
/// ### Font Families:
///
/// The class provides the following IRANSansMobile(FaNum) font family variants:
/// - **[regular]**: `"IRANSansMobile(FaNum)"`
/// - **[light]**: `"IRANSansMobile(FaNum)_Light"`
/// - **[ultraLight]**: `"IRANSansMobile(FaNum)_UltraLight"`
/// - **[medium]**: `"IRANSansMobile(FaNum)_Medium"`
/// - **[bold]**: `"IRANSansMobile(FaNum)_Bold"`
/// - **[black]**: `"IRANSansMobile(FaNum)_Black"`
///
///
/// ### Predefined Text Styles:
///
/// - **[caption]**:
///   - Font: `IranSansMobile_faNum_Medium`
///   - Font Size: `12px`
///   - Font Weight: `Medium (500)`
///   - Line Height: `22px` (1.83 ratio)
///
/// - **[body]**:
///   - Font: `IranSansMobile_faNum_Regular`
///   - Font Size: `14px`
///   - Font Weight: `Regular (400)`
///   - Line Height: `22px` (1.57 ratio)
///
/// - **[bodyStrong]**:
///   - Font: `IranSansMobile_faNum_Bold`
///   - Font Size: `16px`
///   - Font Weight: `Bold (700)`
///   - Line Height: `24px` (1.5 ratio)
///
/// - **[bodyLarge]**:
///   - Font: `IranSansMobile_faNum_Regular`
///   - Font Size: `16px`
///   - Font Weight: `Regular (400)`
///   - Line Height: `22px` (1.375 ratio)
///
/// - **[subtitle]**:
///   - Font: `IranSansMobile_faNum_Regular`
///   - Font Size: `20px`
///   - Font Weight: `Regular (400)`
///   - Line Height: `22px` (1.1 ratio)
///
/// - **[title]**:
///   - Font: `IranSansMobile_faNum_Medium`
///   - Font Size: `24px`
///   - Font Weight: `Medium (500)`
///   - Line Height: `36px` (1.5 ratio)
///
/// - **[titleLarge]**:
///   - Font: `IranSansMobile_faNum_Bold`
///   - Font Size: `28px`
///   - Font Weight: `Bold (700)`
///   - Line Height: `28px` (1.0 ratio)
///
/// - **[display]**:
///   - Font: `IranSansMobile_faNum_Bold`
///   - Font Size: `42px`
///   - Font Weight: `Bold (700)`
///   - Line Height: `52px` (1.24 ratio)
///
/// ### Example:
///
/// ```dart
/// Text(
///   'Hello, world!',
///   style: AppTextStyles.body,
/// );
/// ```
///
/// This example demonstrates how to apply a predefined text style from `AppTextStyles` in a Flutter widget.
/// All text styles are defined as `const` for better performance.

class AppTextStyles {
  AppTextStyles._();

  // Font family constants based on the specified weights
  static const iranSansMobileFaNumUltraLight =
      'IranSansMobile_faNum_UltraLight';
  static const iranSansMobileFaNumLight = 'IranSansMobile_faNum_Light';
  static const iranSansMobileFaNumRegular = 'IranSansMobile_faNum_Regular';
  static const iranSansMobileFaNumMedium = 'IranSansMobile_faNum_Medium';
  static const iranSansMobileFaNumBold = 'IranSansMobile_faNum_Bold';
  static const iranSansMobileFaNumBlack = 'IranSansMobile_faNum_Black';

  // Caption/medium
  static const TextStyle caption = TextStyle(
    fontFamily: iranSansMobileFaNumMedium,
    fontSize: 12, // font-size: 12px;
    fontWeight: FontWeight.w500, // font-weight: 500 (Medium);
    height: 1.83, // line-height: 22px (22px line-height / 12px font-size);
  );

  // Small/regular
  static const TextStyle body = TextStyle(
    fontFamily: iranSansMobileFaNumRegular,
    fontSize: 14, // font-size: 14px;
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
    height: 1.57, // line-height: 22px (22px line-height / 14px font-size);
  );

  // Body/bold
  static const TextStyle bodyStrong = TextStyle(
    fontFamily: iranSansMobileFaNumBold,
    fontSize: 16, // font-size: 16px;
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
    height: 1.5, // line-height: 24px (24px line-height / 16px font-size);
  );

  // Body/regular
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: iranSansMobileFaNumRegular,
    fontSize: 16, // font-size: 16px;
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
    height: 1.375, // line-height: 22px (22px line-height / 16px font-size);
  );

  // Subtitle/regular
  static const TextStyle subtitle = TextStyle(
    fontFamily: iranSansMobileFaNumRegular,
    fontSize: 20, // font-size: 20px;
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
    height: 1.1, // line-height: 22px (22px line-height / 20px font-size);
  );

  // Title/medium
  static const TextStyle title = TextStyle(
    fontFamily: iranSansMobileFaNumMedium,
    fontSize: 24, // font-size: 24px;
    fontWeight: FontWeight.w500, // font-weight: 500 (Medium);
    height: 1.5, // line-height: 36px (36px line-height / 24px font-size);
  );

  // Title/bold
  static const TextStyle titleLarge = TextStyle(
    fontFamily: iranSansMobileFaNumBold,
    fontSize: 28, // font-size: 28px;
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
    height: 1.0, // line-height: 28px (28px line-height / 28px font-size);
  );

  // Header/bold
  static const TextStyle display = TextStyle(
    fontFamily: iranSansMobileFaNumBold,
    fontSize: 42, // font-size: 42px;
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
    height: 1.24, // line-height: 52px (52px line-height / 42px font-size);
  );
}
