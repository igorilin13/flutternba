import 'package:flutter/material.dart';

class NbaListCard extends StatelessWidget {
  final List<Widget> children;

  const NbaListCard({super.key, this.children = const <Widget>[]});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Column(children: children),
      ),
    );
  }
}

class NbaListCardTile extends StatelessWidget {
  final Widget? child;

  const NbaListCardTile({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: child,
    );
  }
}
