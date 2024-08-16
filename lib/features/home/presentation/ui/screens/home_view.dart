import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/flags.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_app_bar.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_button.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';
import 'package:vigor_enterprise_currency_converter_task/core/utils/enums.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/reciever_to_field.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/sender/sender_from_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final FlagsManager flagsManager = FlagsManager();

  @override
  void initState() {
    super.initState();
    getIt<CurrenciesCubit>().loadCurrencies();
    // getIt<CurrenciesCubit>().getHistory();
  }

  @override
  Widget build(BuildContext context) {
    // log(getIt<CurrenciesCubit>().state.currencies.toString());
    return Scaffold(
      bottomSheet: BlocBuilder<CurrenciesCubit, CurrenciesState>(
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
      ),
      appBar: const CustomAppBar(
        title: 'Converter',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
        child: Column(
          children: [
            const SenderField(),
            24.verticalSpace,
            const RecieverField(),
            _buildConvertRate(),
          ],
        ),
      ),
    );
  }

  _buildConvertRate() {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        return state.fromCurrency == null ||
                state.toCurrency == null ||
                state.rate == null
            ? const SizedBox()
            : Column(
                children: [
                  SizedBox(height: 24), // Use SizedBox for spacing
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
