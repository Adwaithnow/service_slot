import 'package:flutter/material.dart';
import 'package:service_slot/theme/values.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required GlobalKey<FormState> form,
    required this.label,
    required this.onPressed,
  }) : _form = form;
  final String label;
  final GlobalKey<FormState> _form;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
      ),
      onPressed: () {
        if (_form.currentState!.validate()) {
          onPressed();
        }
      },
      child: Text(label),
    );
  }
}
