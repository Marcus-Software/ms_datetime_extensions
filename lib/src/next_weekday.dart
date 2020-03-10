/// Return a new instance [DateTime] with next weekday
/// 
/// [from] DateTime that will have incremented days
/// [weekday] use 1 for Sunday .. 7 for Saturday
DateTime nextWeekday(DateTime from, int weekday) {
  assert(weekday <= 7, 'weekday:$weekday must be less or equal then 7');
  assert(weekday > 0, 'weekday:$weekday must be grater then 0');
  var myWeekDay = (from.weekday == 7 ? 0 : from.weekday);
  return from.add(
      Duration(days: myWeekDay == weekday ? 7 : (myWeekDay - weekday).abs()));
}
