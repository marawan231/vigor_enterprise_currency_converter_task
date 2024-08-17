import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';

class CurrencyCoverterContainer extends StatelessWidget {
  const CurrencyCoverterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        return state.fromCurrency == null ||
                state.toCurrency == null ||
                state.rate == null
            ? const SizedBox()
            : Column(
                children: [
                  const SizedBox(height: 24), // Use SizedBox for spacing
                  Card(
                    // Wrap in a Card for better visual separation
                    elevation: 4,
                    color: ColorsManager.black,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Currency Converter',
                            style: getBoldStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                          const Divider(
                              color: Colors
                                  .grey), // Add a divider for visual separation
                          const SizedBox(height: 8),
                          Text(
                            '1 ${state.fromCurrency?.code ?? 'USD'} = ${state.rate?.rate.toStringAsFixed(2) ?? ''} ${state.toCurrency?.code ?? 'EUR'}',
                            style: getRegularStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
      },
    );
  }
}