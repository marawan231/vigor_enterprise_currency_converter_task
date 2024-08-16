import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/reciever/bottom_sheet_wallet_list_item.dart';

class BottomSheetWalletsList extends StatefulWidget {
  const BottomSheetWalletsList({super.key});

  @override
  State<StatefulWidget> createState() => _RecieverBottomSheetWalletsListState();
}

class _RecieverBottomSheetWalletsListState
    extends State<BottomSheetWalletsList> {
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
              return BottomSheetWalletListItem(
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
