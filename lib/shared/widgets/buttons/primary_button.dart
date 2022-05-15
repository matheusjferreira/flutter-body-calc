import 'package:flutter/material.dart';

import '../../core/app_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const PrimaryButton({
    required this.label,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        child: Text(
          label,
          style: AppFonts.primaryButtonFont,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
