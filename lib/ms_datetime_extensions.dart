library ms_datetime_extensions;

import 'package:ms_datetime_extensions/src/next_weekday.dart';
import 'package:ms_datetime_extensions/src/worldtimeapi.dart';

export 'package:ms_datetime_extensions/src/worldtimeapi.dart';
export 'package:ms_datetime_extensions/src/next_weekday.dart';

var _nextWeekday = nextWeekday;
var _fromInternet = fromInternet;

extension MsDateTimeExtensions on DateTime {
  DateTime nextWeekday(int weekday) => _nextWeekday(this, weekday);

  static Future<DateTime> fromInternet({String timeZoneName}) =>
      _fromInternet(timezone: timeZoneName);
}
