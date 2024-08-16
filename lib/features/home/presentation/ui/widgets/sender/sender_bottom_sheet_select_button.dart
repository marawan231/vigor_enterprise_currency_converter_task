import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_button.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';

class SenderBottomSheetSelectButton extends StatefulWidget {
  const SenderBottomSheetSelectButton({super.key});

  @override
  State<StatefulWidget> createState() => _SenderBottomSheetSelectButtonState();
}

class _SenderBottomSheetSelectButtonState
    extends State<SenderBottomSheetSelectButton> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CurrenciesCubit, CurrenciesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.sp),
            child: CustomButton(
                color: ColorsManager.black,
                name: 'Select',
                onPressed: _checkIfButtonEnabled()
                    ? () {
                        getIt<CurrenciesCubit>().setSelectedSenderWallet(
                            getIt<CurrenciesCubit>()
                                .state
                                .currencies!
                                .firstWhere((element) => element.isSelected!));
                      }
                    : null),
          ),
        );
      },
    );
  }

  _checkIfButtonEnabled() {
    return getIt<CurrenciesCubit>()
        .state
        .currencies!
        .any((element) => element.isSelected ?? false);
  }
}
