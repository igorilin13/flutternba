import 'package:flutter/material.dart';

class ErrorDisplay extends StatelessWidget {
  final String message;
  final VoidCallback? onTap;
  final IconData icon;

  const ErrorDisplay({
    super.key,
    required this.message,
    this.onTap,
    this.icon = Icons.refresh,
  });

  @override
  Widget build(BuildContext context) {
    final border = BorderRadius.circular(16);
    var theme = Theme.of(context);
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: border,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 340),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 36,
                  color: theme.colorScheme.onSurface,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Text(
                    message,
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
