import 'package:flutter/material.dart';

class ActionMessageDisplay extends StatelessWidget {
  final String message;
  final VoidCallback onAction;
  final String actionText;
  final IconData icon;

  const ActionMessageDisplay({
    super.key,
    required this.message,
    required this.onAction,
    required this.actionText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: theme.colorScheme.surface,
      ),
      constraints: const BoxConstraints(maxWidth: 340),
      padding: const EdgeInsets.only(top: 16, bottom: 4, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: onAction,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 20),
                const SizedBox(width: 4),
                Text(actionText.toUpperCase()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
