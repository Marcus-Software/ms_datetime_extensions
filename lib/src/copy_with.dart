/// Return a new instance of DateTime with new values
DateTime copyWith(
  DateTime origin, {
  int? year,
  int? month,
  int? day,
  int? hour,
  int? minute,
  int? second,
  int? millisecond,
  int? microsecond,
}) {
  return DateTime(
      year ?? origin.year,
      (month ?? origin.month) + (day == 0 ? 1 : 0),
      day ?? origin.day,
      hour ?? origin.hour,
      minute ?? origin.minute,
      second ?? origin.second,
      millisecond ?? origin.millisecond,
      microsecond ?? origin.microsecond);
}
