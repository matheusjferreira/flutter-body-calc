import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_fonts.dart';

class PrimaryAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final Function()? onPressed;

  const PrimaryAppBar({
    required this.title,
    this.icon,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.blue,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(
          title,
          style: AppFonts.appBarTitle,
        ),
      ),
      actions: [
        icon != null
            ? Padding(
                padding: const EdgeInsets.only(top: 24),
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(icon),
                  color: AppColors.white,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
