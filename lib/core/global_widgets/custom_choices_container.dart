import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';

class CustomChoicesContainer extends StatelessWidget {
  const CustomChoicesContainer({
    super.key,
    this.hintText,
    this.headlineText,
    this.hintStyle,
    this.hasList,
    this.headlineTextStyle,
    this.onTap,
    this.leading,
    this.subtitle,
    this.isContentPadding,
  });
  final bool? hasList;
  final Widget? leading;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? headlineText;
  final Widget? subtitle;
  final bool? isContentPadding;
  // final TextInputType? keyboardType;
  // final bool? obscureText;
  // final TextEditingController? controller;
  // final String? Function(String?)? validator;
  // final List<TextInputFormatter>? inputFormatters;
  // final Function(String)? onSaved;
  // final Function(String)? onChanged;
  // final Function(String)? onFieldSubmitted;
  // final void Function()? onTap;
  // final Function(String)? onEditingComplete;
  // final TextDirection? hintTextDirection;
  // final int? maxLines;
  // final bool? autofocus;
  // final bool? readOnly;
  // final bool? enabled;
  // final Widget? prefixIcon;
  // final Widget? suffixIcon;
  final TextStyle? headlineTextStyle;
  final void Function()? onTap;
  // final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headlineText ?? '',
          style: headlineTextStyle ??
              getRegularStyle(
                color: ColorsManager.black,
                fontSize: 15.sp,
              ),
        ),
        8.verticalSpace,
        InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 74.sp,
            child: ListTile(
              // dense: true,
              subtitle: subtitle,
              contentPadding: isContentPadding ?? true
                  ? EdgeInsetsDirectional.only(
                      start: 20.sp, end: 20.sp, top: 10.sp, bottom: 10.sp)
                  : null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
                side: const BorderSide(
                    color: ColorsManager.greyTextColor, width: 1),
              ),
              leading: leading,
              // horizontalTitleGap: ,
              trailing: hasList ?? true
                  ? const Icon(
                      Icons.chevron_right_sharp,
                      color: ColorsManager.darkGrey,
                    )
                  : null,
              title: Padding(
                padding: EdgeInsets.only(bottom: 8.sp),
                child: Text(
                  hintText ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: hintStyle ??
                      getRegularStyle(
                        color: ColorsManager.darkGrey,
                        fontSize: 15.sp,
                      ),
                ),
              ),
              // leading: ,
            ),
          ),
        )
      ],
    );
  }
}
