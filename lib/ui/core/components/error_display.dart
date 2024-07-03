import 'package:flutter/material.dart';
import 'package:flutternba/ui/core/asset_paths.dart';
import 'package:flutternba/ui/core/strings.dart';

class NbaErrorDisplay extends StatelessWidget {
  final String? title;
  final String? message;
  final IconData? actionIcon;
  final String? actionText;
  final VoidCallback? onTap;

  const NbaErrorDisplay({
    super.key,
    this.title = UiStrings.genericErrorTitle,
    this.message,
    this.actionIcon = Icons.refresh,
    this.actionText = UiStrings.actionRetry,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AssetPaths.ballIllustration, width: 175.0),
          if (title != null)
            Text(
              title!,
              style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 4),
          if (message != null)
            Text(
              message!,
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 16),
          if (onTap != null)
            SizedBox(
              width: 280,
              child: FilledButton(
                onPressed: onTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (actionIcon != null) ...[
                      Icon(actionIcon, size: 20),
                      const SizedBox(width: 4),
                    ],
                    if (actionText != null) Text(actionText!.toUpperCase()),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
