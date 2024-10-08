import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/covert_to/bottom_sheet_currencies_list.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/covert_to/reciever_bottom_sheet_headline.dart';

class ReciverBottomSheetList extends StatefulWidget {
  const ReciverBottomSheetList({super.key});

  @override
  State<StatefulWidget> createState() => _ReciverBottomSheetListState();
}

class _ReciverBottomSheetListState extends State<ReciverBottomSheetList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        16.verticalSpace,
        const RecieverBottomSheetHeadline(),
        28.verticalSpace,
        const BottomSheetCurrenciesList(),
        80.verticalSpace,
      ],
    );
  }
}
