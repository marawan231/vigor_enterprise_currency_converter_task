import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_button.dart';
import 'package:vigor_enterprise_currency_converter_task/core/utils/enums.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';

class ConvertButton extends StatelessWidget {
  const ConvertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        return state.fromCurrency == null || state.toCurrency == null
            ? const SizedBox()
            : Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                          loading: state.getRateState == RequestState.loading,
                          name: 'Convert',
                          onPressed: () {
                            getIt<CurrenciesCubit>().getRate();
                          }),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
