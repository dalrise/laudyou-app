import 'package:flutter/material.dart';

class AppbarBottomPreferredSize extends StatelessWidget
    implements PreferredSizeWidget {
  const AppbarBottomPreferredSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PreferredSize(
      child: Divider(
        thickness: 0.5,
        height: 0.5,
        color: Colors.grey,
      ),
      preferredSize: Size.fromHeight(0.5),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0.5);
}
