import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.padding,
      required this.onTap,
      this.radius,
      this.buttonColor,
      this.textColor,
      this.fontSize});
  final String buttonText;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final double? radius;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 4.r),
            color: buttonColor ?? Colors.black),
        alignment: Alignment.center,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Text(
          buttonText,
          style:
              TextStyle(color: textColor ?? Colors.white, fontSize: fontSize),
        ),
      ),
    );
  }
}
