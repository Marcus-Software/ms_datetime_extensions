/// Return true if [dateTime] and [dateTimeToCompare] happened on the same day
bool isAtSameDay(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameMonth(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.day == dateTime.day;

/// Return true if [dateTime] and [dateTimeToCompare] happened on the same hour
bool isAtSameHour(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameDay(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.hour == dateTime.hour;

/// Return true if [dateTime] and [dateTimeToCompare] happened on the same minute
bool isAtSameMinute(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameHour(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.minute == dateTime.minute;

/// Return true if [dateTime] and [dateTimeToCompare] happened on the same month
bool isAtSameMonth(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameYear(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.month == dateTime.month;

/// Return true if [dateTime] and [dateTimeToCompare] happened on the same second
bool isAtSameSecond(DateTime dateTime, DateTime dateTimeToCompare) =>
    isAtSameHour(dateTime, dateTimeToCompare) &&
    dateTimeToCompare.second == dateTime.second;

/// Return true if [dateTime] and [dateTimeToCompare] happened on the same year
bool isAtSameYear(DateTime dateTime, DateTime dateTimeToCompare) =>
    dateTimeToCompare.year == dateTime.year;

/// Return true if [dateTime] happened today
bool isAtToday(DateTime dateTime) => isAtSameDay(dateTime, DateTime.now());
