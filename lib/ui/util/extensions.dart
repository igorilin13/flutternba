import 'package:flutter/material.dart';

extension PixelDensity on int {
  int toPx(BuildContext context) {
    return (this * MediaQuery.of(context).devicePixelRatio).round();
  }
}