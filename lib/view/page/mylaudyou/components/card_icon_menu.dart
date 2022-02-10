import 'package:flutter/material.dart';
import 'package:laudyou_app/models/icon_menu.dart';
import 'package:laudyou_app/theme.dart';

class CardIconMenu extends StatelessWidget {
  //const CardIconMenu({Key? key}) : super(key: key);

  const CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key);

  final List<IconMenu> iconMenuList;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData),
          ),
        ),
      ),
    );
  }
}

_buildRowIconItem(String title, IconData iconData) {
  return SizedBox(
    height: 50,
    child: Row(
      children: [
        Icon(iconData, size: 17),
        const SizedBox(width: 20),
        Text(title, style: textTheme().subtitle1),
      ],
    ),
  );
}
