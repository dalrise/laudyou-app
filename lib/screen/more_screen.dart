import "package:flutter/material.dart";

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              height: 200,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
