import 'package:flutter_test/flutter_test.dart';

import 'package:nice_sheet/nice_sheet.dart';

void main() {
  test('NiceSheet', () {
    final niceSheet = NiceSheet();
    expect(niceSheet.editTitle, 'Edit');
    expect(niceSheet.deleteTitle, 'Delete');
    expect(niceSheet.emojiTitle, 'Emoji');
    expect(niceSheet.backgroundColor, null);
    expect(niceSheet.textColor, null);
  });
}
