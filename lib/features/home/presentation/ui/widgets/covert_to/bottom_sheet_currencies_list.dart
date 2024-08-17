import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/covert_to/bottom_sheet_wallet_currency_item.dart';

class BottomSheetCurrenciesList extends StatefulWidget {
  const BottomSheetCurrenciesList({super.key});

  @override
  State<StatefulWidget> createState() => _RecieverBottomSheetWalletsListState();
}

class _RecieverBottomSheetWalletsListState
    extends State<BottomSheetCurrenciesList> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CurrenciesCubit>(),
      child: BlocConsumer<CurrenciesCubit, CurrenciesState>(
        listener: (context, state) {
          log('CurrenciesCubit state: $state');
        },
        builder: (context, state) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BottomSheetCurrencyListItem(
                  currency: state.currencies?[index] ??
                      CurrencyEntity(
                          code: 'USD',
                          name: 'United States Dollar',
                          symbol: '\$',
                          isSelected: false));
            },
            separatorBuilder: (context, index) => 16.verticalSpace,
            itemCount: state.currencies?.length ?? 0,
          );
        },
      ),
    );
  }
}
