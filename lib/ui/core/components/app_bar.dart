import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NbaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final Widget? title;
  final List<Widget>? actions;

  const NbaAppBar({
    super.key,
    this.showBackButton = true,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final isIOS = Platform.isIOS;
    final theme = Theme.of(context);

    return AppBar(
      title: title,
      automaticallyImplyLeading: showBackButton,
      surfaceTintColor: isIOS ? Colors.transparent : null,
      shadowColor: isIOS ? CupertinoColors.darkBackgroundGray : null,
      scrolledUnderElevation: isIOS ? .1 : null,
      toolbarHeight: isIOS ? 44 : null,
      titleTextStyle: isIOS
          ? theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(Platform.isIOS ? 44 : kToolbarHeight);
}
