library ms_datetime_extensions;

import 'package:ms_datetime_extensions/src/next_weekday.dart';
import 'package:ms_datetime_extensions/src/worldtimeapi.dart';

export 'package:ms_datetime_extensions/src/worldtimeapi.dart';
export 'package:ms_datetime_extensions/src/next_weekday.dart';

var _nextWeekday = nextWeekday;
var _fromInternet = fromInternet;

extension MsDateTimeExtensions on DateTime {
  /// Return a new instance [DateTime] with next weekday
  ///
  /// [weekday] use 1 for Sunday .. 7 for Saturday
  DateTime nextWeekday(int weekday) => _nextWeekday(this, weekday);

  /// Get current DateTime from [internet](https://worldtimeapi.org)
  /// [timezone] Set a timezone. Use [Timezones]
  /// if null will return a timezone from public client ip
  static Future<DateTime> fromInternet({String timeZoneName}) =>
      _fromInternet(timezone: timeZoneName);
}
