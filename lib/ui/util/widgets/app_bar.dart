import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NbaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;

  const NbaAppBar({super.key, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      surfaceTintColor: Platform.isIOS ? Colors.transparent : null,
      shadowColor: Platform.isIOS ? CupertinoColors.darkBackgroundGray : null,
      scrolledUnderElevation: Platform.isIOS ? .1 : null,
      toolbarHeight: Platform.isIOS ? 44 : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(Platform.isIOS ? 44 : kToolbarHeight);
}
