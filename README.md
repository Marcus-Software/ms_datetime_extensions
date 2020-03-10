# Overview [![Pub](https://img.shields.io/pub/v/ms_datetime_extensions.svg)](https://pub.dartlang.org/packages/ms_datetime_extensions) ![GitHub stars](https://img.shields.io/github/stars/Marcus-Software/ms_datetime_extensions?style=social)

A simple lib to incremease DateTime with usefull functions

## Whats Ms_DateTime_Extensions do

Add usefull functions to DateTime:

- `nextWeekday` return a new DateTime to a next weekday
- `fromInternet` fetch a DateTime from internet

## Usage

Just import lib and use [extensions](https://dart.dev/guides/language/extension-methods), call the functions to starts work:

```dart
import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';

  var xmas = DateTime(2020, 12, 25, 15, 00); // Friday 25 december of 2020
  var nextFriday =
      xmas.nextWeekday(DateTime.friday); // Friday 01 january of 2021
  print(nextFriday);

  var mDateTimeFromInternet = await dateTimeFromInternet();

```
