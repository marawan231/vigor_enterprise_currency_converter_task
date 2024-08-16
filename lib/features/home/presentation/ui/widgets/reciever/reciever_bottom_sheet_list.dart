import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/bottom_sheet_wallets_list.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/reciever_bottom_sheet_headline.dart';

class ReciverBottomSheetList extends StatefulWidget {
  const ReciverBottomSheetList({super.key});

  @override
  State<StatefulWidget> createState() =>
      _ReciverBottomSheetListState();
}

class _ReciverBottomSheetListState
    extends State<ReciverBottomSheetList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        16.verticalSpace,
        const RecieverBottomSheetHeadline(),
        28.verticalSpace,
        const BottomSheetWalletsList(),
        80.verticalSpace,
      ],
    );
  }
}
