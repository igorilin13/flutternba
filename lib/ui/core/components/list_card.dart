import 'package:flutter/material.dart';

class NbaListCard extends StatelessWidget {
  final VoidCallback? onTap;
  final List<Widget> children;

  const NbaListCard({super.key, this.onTap, this.children = const <Widget>[]});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Column(children: children),
        ),
      ),
    );
  }
}

class NbaListCardTile extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onTap;

  const NbaListCardTile({super.key, this.onTap, this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: child,
        ),
      ),
    );
  }
}
