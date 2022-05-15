import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class PrimaryTextField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;

  const PrimaryTextField({
    required this.label,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: AppColors.blue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
