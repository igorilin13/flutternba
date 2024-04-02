import 'package:flutter/material.dart';

class StandingsValueCell extends StatelessWidget {
  final String text;

  const StandingsValueCell({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
