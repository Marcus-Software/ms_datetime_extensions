library ms_datetime_extensions;

import 'package:ms_datetime_extensions/src/next_weekday.dart';
import 'package:ms_datetime_extensions/src/worldtimeapi.dart';
import 'package:ms_datetime_extensions/src/is_at_moment.dart';

export 'package:ms_datetime_extensions/src/worldtimeapi.dart';
export 'package:ms_datetime_extensions/src/next_weekday.dart';
export 'package:ms_datetime_extensions/src/is_at_moment.dart';

var _nextWeekday = nextWeekday;
var _fromInternet = dateTimeFromInternet;
var _isAtToday = isAtToday;
var _isAtSecond = isAtSameSecond;
var _isAtMinute = isAtSameMinute;
var _isAtHour = isAtSameHour;
var _isAtDay = isAtSameDay;
var _isAtMounth = isAtSameMounth;
var _isAtYear = isAtSameYear;

extension MsDateTimeExtensions on DateTime {
  /// Return a new instance [DateTime] with next weekday
  ///
  /// [weekday] use 1 for Sunday .. 7 for Saturday
  DateTime nextWeekday(int weekday) => _nextWeekday(this, weekday);

  /// Get current DateTime from [internet](https://worldtimeapi.org)
  /// [timeZoneName] Set a timezone. Use [Timezones]
  /// if null will return a timezone from public client ip
  Future<DateTime> fromInternet({String timeZoneName}) =>
      _fromInternet(timezone: timeZoneName);

  /// Return true if this instance happened at today
  bool isAtToday() => _isAtToday(this);

  /// Return true if [other] is happenen on the same second
  bool isAtSameSecond(DateTime other) => _isAtSecond(this, other);

  /// Return true if [other] is happenen on the same minute
  bool isAtSameMinute(DateTime other) => _isAtMinute(this, other);

  /// Return true if [other] is happenen on the same hour
  bool isAtSameHour(DateTime other) => _isAtHour(this, other);

  /// Return true if [other] is happenen on the same day
  bool isAtSameDay(DateTime other) => _isAtDay(this, other);

  /// Return true if [other] is happenen on the same mount
  bool isAtSameMounth(DateTime other) => _isAtMounth(this, other);

  /// Return true if [other] is happenen on the same year
  bool isAtSameYear(DateTime other) => _isAtYear(this, other);
}
