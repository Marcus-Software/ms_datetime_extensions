import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';

Future<void> main(List<String> args) async {
  var xmas = DateTime(2020, 12, 25, 15, 00); // Friday 25 december of 2020
  var nextFriday =
      xmas.nextWeekday(DateTime.friday); // Friday 01 january of 2021
  print(nextFriday);

  var myDateTimeFromInternet = await dateTimeFromInternet();
  print(myDateTimeFromInternet);
}
