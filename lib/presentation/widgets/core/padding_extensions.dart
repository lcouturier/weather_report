import 'package:flutter/material.dart';

extension PaddingExtensions on Widget {
  Padding paddingOnly({double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0, Key? key}) {
    return Padding(key: key, padding: EdgeInsets.only(top: top, left: left, bottom: bottom, right: right), child: this);
  }

  Padding padding(EdgeInsets value, {Key? key}) {
    return Padding(
      key: key,
      padding: value,
      child: this,
    );
  }

  Padding paddingAll(double value, {Key? key}) {
    return Padding(
      key: key,
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Padding paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
    Key? key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }
}
