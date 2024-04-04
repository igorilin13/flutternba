import 'package:flutter/material.dart';
import 'package:flutternba/ui/util/colors.dart';

class TeamTidbitCard extends StatelessWidget {
  final String contentValue;
  final TextStyle? contentStyle;
  final String caption;

  const TeamTidbitCard({
    super.key,
    required this.contentValue,
    this.contentStyle,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print(theme.brightness);
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        elevation: 0,
        color: theme.colorScheme.surfaceSecondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contentValue,
                style: contentStyle ?? theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
              const SizedBox(
                width: 60,
                child: Divider(thickness: 0.15),
              ),
              Text(
                caption,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  fontStyle: FontStyle.italic,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
