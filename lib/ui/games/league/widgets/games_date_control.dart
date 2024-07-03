import 'package:flutter/material.dart';

class GamesDateControl extends StatelessWidget {
  final String selectedDate;
  final VoidCallback onPreviousTap;
  final VoidCallback onNextTap;
  final VoidCallback onDatePickerRequest;

  const GamesDateControl({
    super.key,
    required this.selectedDate,
    required this.onPreviousTap,
    required this.onNextTap,
    required this.onDatePickerRequest,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 28,
          icon: const Icon(Icons.chevron_left),
          onPressed: onPreviousTap,
        ),
        InkWell(
          onTap: onDatePickerRequest,
          child: Row(
            children: [
              const Icon(Icons.date_range, size: 16),
              const SizedBox(width: 6),
              Text(
                selectedDate,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        IconButton(
          iconSize: 28,
          icon: const Icon(Icons.chevron_right),
          onPressed: onNextTap,
        ),
      ],
    );
  }
}
