import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/flags.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_app_bar.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/convert_button.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/currency_coverter_container.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/covert_to/reciever_to_field.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/widgets/convert_from/sender_from_field.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const ConvertButton(),
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
            const CurrencyCoverterContainer(),
          ],
        ),
      ),
    );
  }
}
