import 'dart:convert';

extension FuncExtensions<T, TResult> on TResult Function(T) {
  TResult Function(T) memoize() {
    var d = <T, TResult>{};
    return (args) {
      if (d.containsKey(args)) {
        return d[args] as TResult;
      }
      var result = this(args);
      d[args] = result;
      return result;
    };
  }
}

extension ExtensionString on String {
  String encodeBase64() => base64Encode(utf8.encode(this));
}

extension IntExtensions on int {
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get seconds => Duration(seconds: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
  Duration get minutes => Duration(minutes: this);

  bool inRange(List<int> items) => items.contains(this);
}

extension ExtensionDateTime on DateTime {
  bool isBeforeOrEqual(DateTime date) => isBefore(date) || isAtSameMomentAs(date);

  bool isAfterOrEqual(DateTime date) => isAfter(date) || isAtSameMomentAs(date);

  bool operator <(DateTime other) => (isBefore(other));
  bool operator >(DateTime other) => (isAfter(other));
  bool operator <=(DateTime other) => (isBeforeOrEqual(other));
  bool operator >=(DateTime other) => (isAfterOrEqual(other));
  bool isSameDate(DateTime other) => year == other.year && month == other.month && day == other.day;
  bool isBeforeOrSameDate(DateTime other) => isBefore(other) || isSameDate(other);
  bool isAfterOrSameDate(DateTime other) => isAfter(other) || isSameDate(other);
}
