import 'package:flutter/material.dart';

class ErrorDisplay extends StatelessWidget {
  final String message;

  const ErrorDisplay({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 36,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Text(
                message,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
