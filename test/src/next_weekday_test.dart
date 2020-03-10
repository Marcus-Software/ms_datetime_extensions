import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';
import 'package:test/test.dart';

void main() {
  test('Return a valid date', () {
    var startDay = DateTime(2020, 3, 1, 12, 00); // Sunday
    var nextWeekDayTest = DateTime(2020, 3, 6, 12, 00); // Friday
    expect(nextWeekday(startDay, DateTime.friday), nextWeekDayTest);
  });

  test('Return a valid date', () {
    var startDay = DateTime(2020, 3, 1, 12, 00); // Sunday
    var nextWeekDayTest = DateTime(2020, 3, 8, 12, 00); // Friday
    expect(nextWeekday(startDay, DateTime.sunday), nextWeekDayTest);
  });

  test('Test max diference days', () {
    var days = <int>[];
    var startDay = DateTime(2020, 3, 1, 12, 00);
    for (var i = 1; i < 8; i++) {
      days.add(nextWeekday(startDay, i).difference(startDay).inDays);
    }
    var max7Days = days.where((numDays) => numDays > 7).toList();
    expect(max7Days.isEmpty, isTrue);
  });

  test('Must thows assert exception', () {
    var startDay = DateTime(2020, 3, 1, 12, 00);
    try {
      expect(nextWeekday(startDay, 0), throwsException);
      expect(nextWeekday(startDay, -1), throwsException);
      expect(nextWeekday(startDay, 8), throwsException);
    } catch (e) {}
  });
}
