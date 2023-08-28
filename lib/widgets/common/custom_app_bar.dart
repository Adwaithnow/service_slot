import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({super.key, required this.title, this.actions});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: actions,
      title: Text(title),
      leading: context.router.canNavigateBack
          ? IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(CupertinoIcons.back),
            )
          : null,
    );
  }
}
