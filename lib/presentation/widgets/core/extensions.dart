import 'dart:convert';

import 'package:flutter/material.dart';

extension NumExtensions on num {
  EdgeInsets get top => EdgeInsets.only(top: toDouble());
  EdgeInsets get left => EdgeInsets.only(left: toDouble());
  EdgeInsets get right => EdgeInsets.only(right: toDouble());
  EdgeInsets get bottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get all => EdgeInsets.all(toDouble());
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());
}

extension IntExtensions on int {
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
  Duration get minutes => Duration(minutes: this);

  bool inRange(List<int> items) => items.contains(this);
}

extension TimeOfDayExtensions on TimeOfDay {
  bool operator >(TimeOfDay other) => (hour == other.hour && minute > other.minute) || (hour > other.hour);
  bool operator <(TimeOfDay other) => (hour == other.hour && minute < other.minute) || (hour < other.hour);
  bool operator <=(TimeOfDay other) => (hour <= other.hour && minute <= other.minute);
  bool operator >=(TimeOfDay other) => (hour >= other.hour && minute >= other.minute);
}

extension ExtensionString on String {
  String encodeBase64() => base64Encode(utf8.encode(this));
}
