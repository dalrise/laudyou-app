import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("카테고리"),
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('assets/images/math_icon.jpg', "수학"),
                _buildRoundTextButton('assets/images/eng_icon.png', "영어"),
                _buildRoundTextButton('assets/images/math_icon.jpg', "수학"),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('assets/images/math_icon.jpg', "수학"),
                _buildRoundTextButton('assets/images/math_icon.jpg', "수학"),
                _buildRoundTextButton('assets/images/math_icon.jpg', "수학"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _buildRoundTextButton(String imgPath, String text) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4D5DD), width: 0.5),
          ),
          //child: Icon(FontAwesomeIcons.calculator, color: Colors.teal),
          child: Image.asset(imgPath, width: 75, height: 75, fit: BoxFit.fill),
        ),
        const SizedBox(height: 10),
        Text(text, style: textTheme().subtitle1)
      ],
    );
  }
}
