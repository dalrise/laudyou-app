import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final FormFieldValidator<String> validator;
  final double circular;

  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.validator,
    this.circular = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        validator: validator,
        obscureText: hint == "Password" ? true : false,
        decoration: InputDecoration(
          hintText: "Enter $hint",
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
