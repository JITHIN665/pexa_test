import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CommonAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
      centerTitle: true,
      elevation: 2,
      flexibleSpace: Container(decoration: BoxDecoration(color: Theme.of(context).appBarTheme.backgroundColor)),
    );
  }
}
