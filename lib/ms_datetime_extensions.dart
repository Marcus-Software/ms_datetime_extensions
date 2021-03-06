library ms_datetime_extensions;

import 'package:ms_datetime_extensions/src/copy_with.dart';
import 'package:ms_datetime_extensions/src/is_at_moment.dart';
import 'package:ms_datetime_extensions/src/next_weekday.dart';
import 'package:ms_datetime_extensions/src/previous_day_of_the_week.dart';
import 'package:ms_datetime_extensions/src/worldtimeapi.dart';

export 'package:ms_datetime_extensions/src/copy_with.dart';
export 'package:ms_datetime_extensions/src/is_at_moment.dart';
export 'package:ms_datetime_extensions/src/next_weekday.dart';
export 'package:ms_datetime_extensions/src/previous_day_of_the_week.dart';
export 'package:ms_datetime_extensions/src/worldtimeapi.dart';

var _copyWith = copyWith;
var _fromInternet = dateTimeFromInternet;
var _isAtDay = isAtSameDay;
var _isAtHour = isAtSameHour;
var _isAtMinute = isAtSameMinute;
var _isAtMonth = isAtSameMonth;
var _isAtSecond = isAtSameSecond;
var _isAtToday = isAtToday;
var _isAtYear = isAtSameYear;
var _nextDayOfTheWeek = nextDayOfTheWeek;
var _previousDayOfTheWeek = previousDayOfTheWeek;

extension MsDateTimeExtensions on DateTime {
  /// Return a new instance [DateTime] with next weekday
  ///
  /// [weekday] use 1 for Sunday .. 7 for Saturday
  @deprecated
  DateTime nextWeekday(int weekday) => _nextDayOfTheWeek(this, weekday);

  /// Return a new instance [DateTime] with next weekday
  ///
  /// [weekday] use 1 for Sunday .. 7 for Saturday
  DateTime nextDayOfTheWeek(int weekday) => _nextDayOfTheWeek(this, weekday);

  /// Return a new instance [DateTime] with previous day of the week
  ///
  /// [weekday] use 1 for Sunday .. 7 for Saturday
  DateTime previousDayOfTheWeek(int weekday) =>
      _previousDayOfTheWeek(this, weekday);

  /// Get current DateTime from [internet](https://worldtimeapi.org)
  /// [timeZoneName] Set a timezone. Use [Timezones]
  /// if null will return a timezone from public client ip
  Future<DateTime> fromInternet({String? timeZoneName}) =>
      _fromInternet(timezone: timeZoneName);

  /// Return true if this instance happened at today
  bool isAtToday() => _isAtToday(this);

  /// Return true if [other] is happened on the same second
  bool isAtSameSecond(DateTime other) => _isAtSecond(this, other);

  /// Return true if [other] is happened on the same minute
  bool isAtSameMinute(DateTime other) => _isAtMinute(this, other);

  /// Return true if [other] is happened on the same hour
  bool isAtSameHour(DateTime other) => _isAtHour(this, other);

  /// Return true if [other] is happened on the same day
  bool isAtSameDay(DateTime other) => _isAtDay(this, other);

  /// Return true if [other] is happened on the same month
  bool isAtSameMonth(DateTime other) => _isAtMonth(this, other);

  /// Return true if [other] is happened on the same year
  bool isAtSameYear(DateTime other) => _isAtYear(this, other);

  /// Return a new instance of DateTime with new values
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) =>
      _copyWith(
        this,
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
      );
}
