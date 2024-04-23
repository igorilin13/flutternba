import 'package:flutter/material.dart';
import 'package:flutternba/ui/util/strings.dart';

class ExpandUpcomingButtonItem extends StatelessWidget {
  final VoidCallback onPressed;

  const ExpandUpcomingButtonItem({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: TextButton(
          onPressed: onPressed,
          child: Text(UiStrings.actionShowAll),
        ),
      ),
    );
  }
}
