import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  const CustomElevatedButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
