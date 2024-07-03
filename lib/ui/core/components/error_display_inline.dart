import 'package:flutter/material.dart';

class NbaInlineErrorDisplay extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  final IconData icon;

  const NbaInlineErrorDisplay({
    super.key,
    required this.message,
    required this.onTap,
    this.icon = Icons.refresh,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 20),
              const SizedBox(width: 8),
              Text(message),
            ],
          ),
        ),
      ],
    );
  }
}
