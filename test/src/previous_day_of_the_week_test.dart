import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';
import 'package:test/test.dart';

void main() {
  test('must return a previous date', () {
    final monday = DateTime(2020, 10, 5);
    final friday = DateTime(2020, 10, 9);
    // 2020,10,9 //friday = 5
    // 2020,10,2 //friday = 5
    // 2020,10,5 //monday = 1
    expect(friday.previousDayOfTheWeek(DateTime.monday), monday);
  });
}
