import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';

class RecieverFieldSubtitle extends StatefulWidget {
  const RecieverFieldSubtitle({super.key});

  @override
  State<RecieverFieldSubtitle> createState() => _RecieverFieldSubtitleState();
}

class _RecieverFieldSubtitleState extends State<RecieverFieldSubtitle> {
  @override
  Widget build(BuildContext context) {
    return _buildSubtitle();
  }

  _buildSubtitle() {
    return Text("Available: EGP  ?? 0)}",
        style: getRegularStyle(color: ColorsManager.darkGrey, fontSize: 13.sp));
  }
}
