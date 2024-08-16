import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/utils/enums.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';

class HistoryBottomSheetChild extends StatefulWidget {
  const HistoryBottomSheetChild({super.key});

  @override
  State<HistoryBottomSheetChild> createState() =>
      _HistoryBottomSheetChildState();
}

class _HistoryBottomSheetChildState extends State<HistoryBottomSheetChild> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    // i wanna build
    return SizedBox(
      width: double.infinity,
      height: 400.sp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<CurrenciesCubit, CurrenciesState>(
              builder: (context, state) {
                return state.getHistoryState == RequestState.loading
                    ? const CupertinoActivityIndicator()
                    : Text(
                        '1 USD = ${getIt<CurrenciesCubit>().state.historyRate?.rate ?? ''} EUR');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (picked != null && picked != _selectedDate) {
                  setState(() {
                    _selectedDate = picked;
                  });
                  await getIt<CurrenciesCubit>().getHistory(
                      date: _selectedDate!.toIso8601String().split('T')[0]);
                }
              },
              child: BlocBuilder<CurrenciesCubit, CurrenciesState>(
                builder: (context, state) {
                  return state.getHistoryState == RequestState.loading
                      ? const CupertinoActivityIndicator()
                      : Text(_selectedDate == null
                          ? 'Pick a Date'
                          : 'Date: ${_selectedDate!.toIso8601String().split('T')[0]}');
                },
              ),
            ),
          ),
          // Continue with the rest of your widget tree
        ],
      ),
    );
  }
}
