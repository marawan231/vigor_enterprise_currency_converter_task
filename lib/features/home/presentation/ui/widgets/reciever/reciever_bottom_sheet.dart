import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/navigator/navigator.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/reciever_bottom_sheet_child.dart';

class RecieverBottomSheet {
  static Future<void> open() async {
    await showModalBottomSheet(
        context: Go.navigatorKey.currentContext!,
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: true,
        showDragHandle: false,
        useSafeArea: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r))),
        builder: (context) {
          return BlocProvider.value(
            value: getIt<CurrenciesCubit>(),
            child: BlocConsumer<CurrenciesCubit, CurrenciesState>(
              listener: (context, state) {},
              builder: (context, state) {
                return const RecieverBottomSheetChild();
              },
            ),
          );
        });
  }
}
