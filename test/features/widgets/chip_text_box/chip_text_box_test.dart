import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vamstreet_components/src/core/enum/chip_text_mode.dart';
import 'package:vamstreet_components/src/core/theme/app_theme.dart';
import 'package:vamstreet_components/src/core/theme/app_theme_data.dart';
import 'package:vamstreet_components/src/features/widgets/chip_text_box/chip_text_box_widget.dart';

void main() {
  group('ChipTextBox Widget Tests', () {
    late String changedText;

    setUp(() {
      changedText = '';
    });

    Widget createTestableWidget({
      required ChipTextMode chipTextMode,
      required FluentThemeData themeWithAccent,
      bool isReadOnly = false,
      String prefixText = '',
      required ValueChanged<String> onChanged,
      String placeholder = '',
    }) {
      return FluentApp(
        debugShowCheckedModeBanner: false,
        home: AppTheme(
          themeData: themeWithAccent,
          child: ScaffoldPage(
            content: Center(
              child: ChipTextBox(
                chipTextMode: chipTextMode,
                isReadOnly: isReadOnly,
                prefixText: prefixText,
                onChanged: onChanged,
                placeholder: placeholder,
              ),
            ),
          ),
        ),
      );
    }

    final themeWithAccent = AppThemeData.darkTheme(const Color(0xFF0F6CBD));

    testWidgets('renders correctly with default values',
        (WidgetTester tester) async {
      await tester.pumpWidget(createTestableWidget(
        themeWithAccent: themeWithAccent,
        chipTextMode: ChipTextMode.normal,
        onChanged: (text) => changedText = text,
      ));

      expect(find.byType(TextBox), findsOneWidget);
    });

    testWidgets('displays correct prefix text', (WidgetTester tester) async {
      const testPrefix = 'Prefix:';

      await tester.pumpWidget(createTestableWidget(
        themeWithAccent: themeWithAccent,
        chipTextMode: ChipTextMode.correct,
        prefixText: testPrefix,
        onChanged: (text) => changedText = text,
      ));

      expect(find.text(testPrefix), findsOneWidget);
    });

    testWidgets('updates value on text change', (WidgetTester tester) async {
      await tester.pumpWidget(createTestableWidget(
        themeWithAccent: themeWithAccent,
        chipTextMode: ChipTextMode.inCorrect,
        onChanged: (text) => changedText = text,
      ));

      final textBox = find.byType(TextBox);
      await tester.enterText(textBox, 'New Input');
      await tester.pumpAndSettle();

      expect(changedText, 'New Input');
    });

    testWidgets('is disabled when read-only', (WidgetTester tester) async {
      await tester.pumpWidget(createTestableWidget(
        themeWithAccent: themeWithAccent,
        chipTextMode: ChipTextMode.correct,
        isReadOnly: true,
        onChanged: (text) => changedText = text,
      ));

      final textBox = find.byType(TextBox);
      expect(tester.widget<TextBox>(textBox).readOnly, isTrue);
    });
  });
}
