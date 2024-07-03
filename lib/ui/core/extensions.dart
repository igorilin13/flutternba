import 'package:flutter/material.dart';

extension PixelDensity on double {
  double toPx(BuildContext context) {
    return this * MediaQuery.of(context).devicePixelRatio;
  }
}
