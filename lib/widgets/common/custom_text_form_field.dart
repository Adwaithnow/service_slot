import 'package:flutter/material.dart';
import 'package:service_slot/theme/values.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.autovalidateMode,
    this.textInputAction,
    this.maxLines = 1,
  });
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int maxLines;
  final AutovalidateMode? autovalidateMode;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      textInputAction: textInputAction,
      controller: controller,
      minLines: 1,
      validator: validator,
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: TextStyle(color: AppColors.primary),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
