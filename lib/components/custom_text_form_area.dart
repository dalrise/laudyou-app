import 'package:flutter/material.dart';

class CustomTextFormArea extends StatelessWidget {
  final String hint;
  final FormFieldValidator<String> validator;
  final int maxLength;

  const CustomTextFormArea({
    required this.hint,
    required this.validator,
    this.maxLength = 500,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        validator: validator,
        maxLength: maxLength,
        maxLines: 10,
        decoration: InputDecoration(
          hintText: "Enter $hint",
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          focusedErrorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
