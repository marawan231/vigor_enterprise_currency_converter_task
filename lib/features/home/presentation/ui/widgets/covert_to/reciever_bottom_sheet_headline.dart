import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';

class RecieverBottomSheetHeadline extends StatelessWidget {
  const RecieverBottomSheetHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Select the currency you want to convert to',
      style: getBoldStyle(fontSize: 20.sp, color: ColorsManager.black),
    );
  }
}
