
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/history_bottom_sheet.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getBoldStyle(
              fontSize: 24.sp,
              color: ColorsManager.black,
            ),
          ),
          //info icon
          InkWell(
            onTap: () {
              HistoryBottomSheet.open();
              // log('info icon tapped' +
              //     getIt<CurrenciesCubit>().state.historyRate!.rate.toString());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const InfoScreen(),
              //   ),
              // );
            },
            child: Icon(
              Icons.info_outline,
              color: ColorsManager.black,
              size: 24.sp,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
