import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/flags.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_cached_image.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_choices_container.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/convert_from/sender_bottom_sheet.dart';

class SenderField extends StatefulWidget {
  const SenderField({super.key});

  @override
  State<SenderField> createState() => _SenderFieldState();
}

class _SenderFieldState extends State<SenderField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        return CustomChoicesContainer(
          isContentPadding: state.fromCurrency == null,
          subtitle: state.fromCurrency == null
              ? null
              : Text('Symbol: ${state.fromCurrency?.symbol ?? ''} ',
                  style: getRegularStyle(
                      color: ColorsManager.darkGrey, fontSize: 13.sp)),
          leading: state.fromCurrency == null
              ? null
              : Container(
                  width: 32.sp,
                  height: 32.sp,
                  padding: EdgeInsets.all(3.sp),
                  margin: EdgeInsetsDirectional.only(bottom: 12.sp),
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFE9E9E9)),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: CustomCachedImage(
                          image: FlagsManager().flagPicker(
                              getIt<CurrenciesCubit>()
                                      .state
                                      .fromCurrency
                                      ?.code ??
                                  ''),
                          fit: BoxFit.fill,
                          width: 20.sp,
                          height: 20.sp)),
                ),
          headlineText: 'From',
          hintText: state.fromCurrency == null
              ? 'Select Currency to Convert'
              : getIt<CurrenciesCubit>().state.fromCurrency?.name ?? '',
          hintStyle: state.fromCurrency == null
              ? null
              : getSemiBoldStyle(fontSize: 17.sp),
          onTap: () {
            SenderBottomSheet.open().whenComplete(() {
              getIt<CurrenciesCubit>().deselectAllCurrencies();
            });
          },
        );
      },
    );
  }
}
