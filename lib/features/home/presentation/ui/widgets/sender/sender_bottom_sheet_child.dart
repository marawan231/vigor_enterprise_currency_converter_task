import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/bottom_sheet_wallets_list.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/sender/sender_bottom_sheet_select_button.dart';

class SenderBottomSheetChild extends StatefulWidget {
  const SenderBottomSheetChild({super.key});

  @override
  State<SenderBottomSheetChild> createState() => _SenderBottomSheetChildState();
}

class _SenderBottomSheetChildState extends State<SenderBottomSheetChild> {
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   ref.read(walletsStateProvider).selectedSenderWallet == null
    //       ? {
    //           for (var element in ref.read(walletsStateProvider).walletsList!)
    //             {element.isSelected = false}
    //         }
    //       : null;
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
      child: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              16.verticalSpace,
              Text(
                'Select sender wallet',
                style:
                    getBoldStyle(fontSize: 20.sp, color: ColorsManager.black),
              ),
              28.verticalSpace,
              const BottomSheetWalletsList(),
              80.verticalSpace,
            ],
          ),
          const SenderBottomSheetSelectButton(),
        ],
      ),
    );
  }
}
