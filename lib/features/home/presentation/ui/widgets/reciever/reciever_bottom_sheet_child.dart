import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/reciever_bottom_sheet_list.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/reciever_bottom_sheet_select_button.dart';

class RecieverBottomSheetChild extends StatefulWidget {
  const RecieverBottomSheetChild({super.key});

  @override
  State<RecieverBottomSheetChild> createState() =>
      _RecieverBottomSheetChildState();
}

class _RecieverBottomSheetChildState extends State<RecieverBottomSheetChild> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
      child: const Stack(
        children: [
          ReciverBottomSheetList(),
          RecieverBottomSheetSelectButton(),
        ],
      ),
    );
  }

  // _checkIfRecieverWalletSelected() {
  //   return ref.read(walletsStateProvider).selectedReceiverWallet == null;
  // }
}
