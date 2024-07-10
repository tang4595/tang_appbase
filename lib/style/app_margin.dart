import 'package:flutter/material.dart';

extension AppMarginEx on num {

  EdgeInsets padding() {
    return EdgeInsets.all(toDouble());
  }

  EdgeInsets verticalPadding() {
    return EdgeInsets.symmetric(vertical: toDouble());
  }

  EdgeInsets horizontalPadding() {
    return EdgeInsets.symmetric(horizontal: toDouble());
  }

  EdgeInsets topPadding() {
    return EdgeInsets.only(top: toDouble());
  }

  EdgeInsets leftPadding() {
    return EdgeInsets.only(left: toDouble());
  }

  EdgeInsets bottomPadding() {
    return EdgeInsets.only(bottom: toDouble());
  }

  EdgeInsets rightPadding() {
    return EdgeInsets.only(right: toDouble());
  }
}

extension AppMarginSymmetricEx on List<num> {

  EdgeInsets symmetricPadding() {
    if (length != 2) return EdgeInsets.zero;
    return EdgeInsets.symmetric(
      horizontal: first.toDouble(),
      vertical: last.toDouble(),
    );
  }

  EdgeInsets tlbrPadding() {
    if (length != 4) return EdgeInsets.zero;
    return EdgeInsets.only(
      top: this[0].toDouble(),
      left: this[1].toDouble(),
      bottom: this[2].toDouble(),
      right: this[3].toDouble(),
    );
  }
}