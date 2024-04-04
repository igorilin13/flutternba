import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final EdgeInsets padding;

  const HeaderItem({
    super.key,
    required this.text,
    this.style,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: style ?? Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
