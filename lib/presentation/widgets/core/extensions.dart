import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weather_report/core/extensions.dart';

extension NumExtensions on num {
  EdgeInsets get top => EdgeInsets.only(top: toDouble());
  EdgeInsets get left => EdgeInsets.only(left: toDouble());
  EdgeInsets get right => EdgeInsets.only(right: toDouble());
  EdgeInsets get bottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get all => EdgeInsets.all(toDouble());
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());
}

extension TimeOfDayExtensions on TimeOfDay {
  bool operator >(TimeOfDay other) => (hour == other.hour && minute > other.minute) || (hour > other.hour);
  bool operator <(TimeOfDay other) => (hour == other.hour && minute < other.minute) || (hour < other.hour);
  bool operator <=(TimeOfDay other) => (hour <= other.hour && minute <= other.minute);
  bool operator >=(TimeOfDay other) => (hour >= other.hour && minute >= other.minute);
}

extension WidgetExtensions on Widget {
  Widget onTap(VoidCallback onTap, {Key? key}) {
    return GestureDetector(key: key, onTap: onTap, child: this);
  }

  Widget addShimmer({Color? baseColor, Color? highlightColor, bool enable = true}) {
    return enable
        ? Shimmer.fromColors(
            baseColor: baseColor ?? Colors.blueGrey.shade100,
            highlightColor: highlightColor ?? Colors.blueGrey.shade200,
            child: this,
          )
        : this;
  }

  Widget fractionallySizedBox({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) =>
      FractionallySizedBox(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Widget addRipple({
    required VoidCallback onTap,
    required Color splashColor,
    Color backgroundColor = Colors.white,
    BorderRadius? borderRadius,
  }) =>
      Material(
          color: backgroundColor,
          child: InkWell(
            onTap: () => Future.delayed(250.milliseconds, onTap),
            highlightColor: Colors.grey.withOpacity(0.2),
            splashColor: splashColor,
            splashFactory: InkRipple.splashFactory,
            borderRadius: borderRadius,
            child: this,
          ));
}
