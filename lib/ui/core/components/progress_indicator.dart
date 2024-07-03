import 'package:flutter/material.dart';

enum NbaProgressIndicatorSize {
  small,
  regular,
}

class NbaProgressIndicator extends StatelessWidget {
  final NbaProgressIndicatorSize size;

  const NbaProgressIndicator({
    super.key,
    this.size = NbaProgressIndicatorSize.regular,
  });

  @override
  Widget build(BuildContext context) {
    return switch (size) {
      NbaProgressIndicatorSize.small => const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator.adaptive(strokeWidth: 2),
        ),
      NbaProgressIndicatorSize.regular =>
        const CircularProgressIndicator.adaptive(),
    };
  }
}
