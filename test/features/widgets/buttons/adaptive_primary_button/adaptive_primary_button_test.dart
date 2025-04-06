import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vamstreet_components/app_styles.dart';
import 'package:vamstreet_components/src/core/enum/request_state_enum.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:vamstreet_components/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:vamstreet_components/src/core/enum/padding_size_enum.dart';

void main() {
  group('AdaptivePrimaryButton', () {
    late bool wasPressed;

    setUp(() {
      wasPressed = false;
    });

    Widget createTestableWidget({
      required String title,
      required RequestStateEnum requestState,
      required VoidCallback? onPressed,
      required FluentThemeData themeWithAccent,
      required ButtonTypeEnum buttonType,
      required PaddingSizeEnum paddingSize,
    }) {
      return FluentApp(
        debugShowCheckedModeBanner: false,
        theme: themeWithAccent,
        home: AppTheme(
          themeData: themeWithAccent,
          child: ScaffoldPage(
            content: Center(
              child: AdaptivePrimaryButton(
                title: title,
                requestState: requestState,
                onPressed: onPressed,
                buttonType: buttonType,
                paddingSize: paddingSize,
              ),
            ),
          ),
        ),
      );
    }

    testWidgets('renders correctly and is clickable when loaded', (
      WidgetTester tester,
    ) async {
      const testTitle = 'Test Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(
        createTestableWidget(
          title: testTitle,
          requestState: RequestStateEnum.loaded,
          onPressed: () {
            wasPressed = true;
          },
          themeWithAccent: themeWithAccent,
          buttonType: ButtonTypeEnum.iconAndTitle,
          paddingSize: PaddingSizeEnum.medium,
        ),
      );

      expect(find.text(testTitle), findsOneWidget);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    testWidgets('renders correctly with titleAndIcon button type', (
      WidgetTester tester,
    ) async {
      const testTitle = 'Title and Icon Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(
        createTestableWidget(
          title: testTitle,
          requestState: RequestStateEnum.loaded,
          onPressed: () {
            wasPressed = true;
          },
          themeWithAccent: themeWithAccent,
          buttonType: ButtonTypeEnum.titleAndIcon,
          paddingSize: PaddingSizeEnum.large,
        ),
      );

      expect(find.text(testTitle), findsOneWidget);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    testWidgets('renders correctly with iconTitleAndIcon button type', (
      WidgetTester tester,
    ) async {
      const testTitle = 'Icon Title and Icon Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(
        createTestableWidget(
          title: testTitle,
          requestState: RequestStateEnum.loaded,
          onPressed: () {
            wasPressed = true;
          },
          themeWithAccent: themeWithAccent,
          buttonType: ButtonTypeEnum.iconTitleAndIcon,
          paddingSize: PaddingSizeEnum.min,
        ),
      );

      expect(find.text(testTitle), findsOneWidget);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    testWidgets('renders outlined button correctly', (
      WidgetTester tester,
    ) async {
      const testTitle = 'Outlined Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(
        createTestableWidget(
          title: testTitle,
          requestState: RequestStateEnum.loaded,
          onPressed: () {
            wasPressed = true;
          },
          themeWithAccent: themeWithAccent,
          buttonType: ButtonTypeEnum.titleOnly,
          paddingSize: PaddingSizeEnum.medium,
        ),
      );

      expect(find.text(testTitle), findsOneWidget);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    testWidgets('renders loading state with ProgressRing', (
      WidgetTester tester,
    ) async {
      const testTitle = 'Loading Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(
        createTestableWidget(
          title: testTitle,
          requestState: RequestStateEnum.loading,
          onPressed: () {},
          themeWithAccent: themeWithAccent,
          buttonType: ButtonTypeEnum.titleOnly,
          paddingSize: PaddingSizeEnum.medium,
        ),
      );

      expect(find.byType(ProgressRing), findsOneWidget);
    });

    testWidgets('renders error state with error icon', (
      WidgetTester tester,
    ) async {
      const testTitle = 'Error Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(
        createTestableWidget(
          title: testTitle,
          requestState: RequestStateEnum.error,
          onPressed: () {},
          themeWithAccent: themeWithAccent,
          buttonType: ButtonTypeEnum.titleOnly,
          paddingSize: PaddingSizeEnum.medium,
        ),
      );

      expect(find.byIcon(FluentIcons.sync), findsOneWidget);
    });
  });
}
