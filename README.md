# Overview 
[![Pub](https://img.shields.io/pub/v/ms_datetime_extensions.svg)](https://pub.dartlang.org/packages/ms_datetime_extensions)
[![GitHub stars](https://img.shields.io/github/stars/Marcus-Software/ms_datetime_extensions?style=social)](https://github.com/Marcus-Software/ms_datetime_extensions)
<span class="badge-buymeacoffee">
<a href="https://www.buymeacoffee.com/marcusedu" title="Donate to this project using Buy Me A Coffee"><img src="https://img.shields.io/badge/buy%20me%20a%20coffee-donate-yellow.svg" alt="Buy Me A Coffee donate button" /></a>
</span>

A simple lib to augment the DateTime with useful functions

## What's ms_datetime_extensions do

Add usefull functions to DateTime:

- `copyWith` return a new DateTime with new values
- `fromInternet` fetch a DateTime from internet
- `isAtSame[second,minute,hour,day,month,year]` return true when compare datetime to other
- `isAtToday` return true if DateTime is today
- `nextDayOfTheWeek` return a new DateTime to a next weekday
- `previousDayOfTheWeek` return a new DateTime to a previous day of the weekday

## Usage

Just import lib and use [extensions](https://dart.dev/guides/language/extension-methods), call the functions to starts work:

```dart
import 'package:ms_datetime_extensions/ms_datetime_extensions.dart';

  var xmas = DateTime(2020, 12, 25, 15, 00); // Friday 25 december of 2020
  var nextFriday =
      xmas.nextWeekday(DateTime.friday); // Friday 01 january of 2021
  print(nextFriday);

  var mDateTimeFromInternet = await dateTimeFromInternet();

  var endYear = xmas.copyWith(day: 0); // Thursday 31 dezember of 2020
```

This lib use thirtpart API visite [worldtimeapi](https://worldtimeapi.org) to know more
