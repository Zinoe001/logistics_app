import 'package:flutter/material.dart';
import 'package:logistics_app/core/utils/colors.dart';
import 'package:logistics_app/core/utils/text.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color boxColor;
  final Color textColor;
  final bool enableBorder;
  final void Function()? onTap;

  const AppButton({
    super.key,
    required this.text,
    required this.boxColor,
    required this.textColor,
    this.onTap,
    this.enableBorder = false,
  });

  AppButton.primary({
    super.key,
    required this.text,
    this.onTap,
    this.enableBorder = false,
  })  : boxColor = AppColors.kPrimaryColor,
        textColor = AppColors.kWhite;

  AppButton.secondary(
      {super.key, required this.text, this.onTap, this.enableBorder = true})
      : boxColor = AppColors.kWhite,
        textColor = AppColors.kPrimaryColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: boxColor,
            border: enableBorder
                ? Border.all(color: AppColors.kPrimaryColor, width: 1)
                : Border.all(color: Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: AppText.button(
            text,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
