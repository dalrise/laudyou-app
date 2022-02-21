import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final FormFieldValidator<String> validator;
  final double circular;
  final String? initialValue;
  final TextEditingController? controller;
  final Icon? suffixIcon;
  final bool obscureText;
  final bool readOnly;

  const CustomTextFormField(
      {Key? key,
      required this.hint,
      required this.validator,
      this.circular = 20,
      this.obscureText = false,
      this.readOnly = false,
      this.suffixIcon,
      this.initialValue,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        validator: validator,
        obscureText: obscureText,
        readOnly: readOnly,
        //style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          suffixIcon: suffixIcon,
          // prefixIcon: Padding(
          //   padding: EdgeInsets.all(0.0),
          //   child: Icon(
          //     CupertinoIcons.person,
          //     color: Colors.greenAccent,
          //   ),
          // ),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(circular)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(circular)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(circular)),
          focusedErrorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(circular)),
        ),
      ),
    );
  }
}
