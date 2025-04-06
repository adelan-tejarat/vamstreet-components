import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test that will always accept', () {
    const bool isTrue = false; // intentionally setting it to false
    expect(isTrue, false); // this will fail since isTrue is false, not true
  });
}
