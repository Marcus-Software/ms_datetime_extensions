import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';

/// Return a new instance [DateTime] with previous day of the week
///
/// [from] DateTime that will have incremented days
/// [weekday] use 1 for Sunday .. 7 for Saturday
DateTime previousDayOfTheWeek(DateTime from, int weekday) {
  assert(weekday <= 7, 'weekday:$weekday must be less or equal then 7');
  assert(weekday > 0, 'weekday:$weekday must be grater then 0');
  var result = from.copyWith();
  while (result.weekday != weekday) {
    result = result.add(Duration(days: -1));
  }
  return result;
}
