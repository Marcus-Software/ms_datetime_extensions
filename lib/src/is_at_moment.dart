bool isAtToday(DateTime dateTime) {
  return isAtSameDay(dateTime, DateTime.now());
}

bool isAtSameSecond(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameHour(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.second == dateTime.second;

bool isAtSameMinute(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameHour(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.minute == dateTime.minute;

bool isAtSameHour(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameDay(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.hour == dateTime.hour;

bool isAtSameDay(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameMounth(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.day == dateTime.day;

bool isAtSameMounth(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameYear(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.month == dateTime.month;

bool isAtSameYear(DateTime dateTime, DateTime dateTimeToCompare) =>
    dateTimeToCompare.year == dateTime.year;
