import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final void Function()? onPressed;

  final Color? color;
  final Color? nameColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final bool loading;
  final EdgeInsetsGeometry? margin;
  final double? elevation;
  final TextStyle? textStyle;
  //onLongPressed
  final void Function()? onLongPress;
  //onHover
  final void Function(bool)? onHover;

  const CustomButton({
    super.key,
    required this.name,
    this.onPressed,
    this.color,
    this.nameColor,
    this.height,
    this.width,
    this.borderRadius,
    this.borderColor,
    this.loading = false,
    this.margin,
    this.elevation,
    this.textStyle,
    this.onLongPress,
    this.onHover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 52.sp,
      child: ElevatedButton(
        
        // statesController: MaterialStatesController(),
        onPressed: loading ? null : onPressed,
        onLongPress: onLongPress,

        // onHover: onHover,

        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: ColorsManager.greyTextColor3,
          elevation: elevation,

          // disabledForegroundColor: nameColor ?? ColorsManager.redColor,
          // textStyle: textStyle ?? getRegularStyle(fontSize: 16.sp),
          // foregroundColor: nameColor,
          backgroundColor: color ?? ColorsManager.primary,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8.r),
          ),
        ),
        child: loading
            ? const CupertinoActivityIndicator()
            : Text(
                name,
                style: getMediumStyle(
                  fontSize: 17.sp,
                  color: onPressed == null
                      ? ColorsManager.greyTextColor2
                      : nameColor ?? ColorsManager.white,
                ),
              ),
      ),
    );
  }
}
