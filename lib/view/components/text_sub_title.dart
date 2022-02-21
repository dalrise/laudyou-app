import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextSubTitle extends StatelessWidget {
  final String title;
  final String? subTitle;
  final IconData icon;
  final GestureTapCallback? press;
  final Color? textColor;
  final Color? iconColor;

  const TextSubTitle({
    Key? key,
    required this.title,
    this.subTitle,
    required this.icon,
    this.press,
    this.textColor = Colors.black,
    this.iconColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 40),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
              Text(
                subTitle ?? "",
                style: TextStyle(color: textColor, fontSize: 14),
              ),
            ],
          ),
        )
      ],
    );
  }
}
