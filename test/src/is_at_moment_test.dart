import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';
import 'package:test/test.dart';

void main() {
  test('must return true for differente datetime but same day, mount, year',
      () {
    var dateTime1 = DateTime(1989, 6, 14, 6, 30);
    var dateTime2 = DateTime(1989, 6, 14, 18, 30);
    expect(isAtSameDay(dateTime1, dateTime2), isTrue);
    expect(isAtSameDay(dateTime1, dateTime2.add(Duration(days: 3))), isFalse);

    expect(isAtSameMonth(dateTime1, dateTime2.add(Duration(days: 3))), isTrue);
    expect(
        isAtSameMonth(dateTime1, dateTime2.add(Duration(days: 90))), isFalse);

    expect(isAtSameYear(dateTime1, dateTime2.add(Duration(days: 90))), isTrue);
    expect(
        isAtSameYear(dateTime1, dateTime2.add(Duration(days: 370))), isFalse);
  });

  test('must return true for isAtToday', () {
    var dt1 = DateTime.now().add(Duration(minutes: -5));
    expect(dt1.isAtToday(), isTrue);
  });
}
