import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';
import 'package:test/test.dart';

void main() {
  test('Must return a valid datetime', () async {
    var nowFromInternet =
        await dateTimeFromInternet(timezone: Timezones.americaSaoPaulo);
    expect(nowFromInternet, isNotNull);
    expect(nowFromInternet.timeZoneOffset, Duration(hours: -3));
  });
}
