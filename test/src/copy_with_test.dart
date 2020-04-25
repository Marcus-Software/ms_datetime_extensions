import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';
import 'package:test/test.dart';

void main() {
  var xmas = DateTime(2020, 12, 25); // Friday 25 december of 2020
  test('must return a valid endYear DateTime', () {
    expect(xmas.copyWith(day: 0), DateTime(2020, 12, 31));
  });

  test('must return a valid november DateTime', () {
    expect(xmas.copyWith(month: 11), DateTime(2020, 11, 25));
  });

  test('must return a valid 2021 DateTime', () {
    expect(xmas.copyWith(year: 2021), DateTime(2021, 12, 25));
  });

  test('must return a valid xmas middle day DateTime', () {
    expect(xmas.copyWith(hour: 12, minute: 0), DateTime(2020, 12, 25, 12, 00));
  });
}
