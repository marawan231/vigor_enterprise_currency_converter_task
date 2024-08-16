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
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/reciever_bottom_sheet.dart';

class RecieverField extends StatefulWidget {
  const RecieverField({super.key});

  @override
  State<RecieverField> createState() => _RecieverFieldState();
}

class _RecieverFieldState extends State<RecieverField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
      builder: (context, state) {
        return CustomChoicesContainer(
          isContentPadding: state.toCurrency == null,
          subtitle: state.toCurrency == null
              ? null
              : Text('Symbol: ${state.toCurrency?.symbol ?? ''} ',
                  style: getRegularStyle(
                      color: ColorsManager.darkGrey, fontSize: 13.sp)),
          leading: state.toCurrency == null
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
                              getIt<CurrenciesCubit>().state.toCurrency?.code ??
                                  ''),
                          fit: BoxFit.fill,
                          width: 20.sp,
                          height: 20.sp)),
                ),
          headlineText: 'To',
          hintText: state.toCurrency == null
              ? 'Select Currency to Convert into'
              : getIt<CurrenciesCubit>().state.toCurrency?.name ?? '',
          hintStyle: state.toCurrency == null
              ? null
              : getSemiBoldStyle(fontSize: 17.sp),
          onTap: () {
            RecieverBottomSheet.open().whenComplete(() {
              getIt<CurrenciesCubit>().deselectAllCurrencies();
            });
          },
        );
      },
    );
  }
}
