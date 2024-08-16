import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/flags.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_cached_image.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/assets_manager.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/custom_text_styles.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';

class BottomSheetWalletListItem extends StatefulWidget {
  const BottomSheetWalletListItem({super.key, required this.currency});

  final CurrencyEntity currency;

  @override
  State<StatefulWidget> createState() =>
      _RecieverBottomSheetWalletListItemState();
}

class _RecieverBottomSheetWalletListItemState
    extends State<BottomSheetWalletListItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.sp,
      child: ListTile(
        shape: _buildShape(),
        trailing: _buildTrailing(),
        leading: _buildLeading(),
        horizontalTitleGap: 16.sp,
        contentPadding: EdgeInsetsDirectional.only(
            start: 20.sp, end: 16.sp, top: 8.sp, bottom: 8.sp),
        dense: true,
        title: _buildTitle(),
        subtitle: _buildSubtitle(),
        onTap: () {
          getIt<CurrenciesCubit>().changeFromCurrency(
              widget.currency, getIt<CurrenciesCubit>().state.currencies ?? []);
          // ref.read(walletsStateProvider.notifier).changeRecieverWalletOption(
          //     widget.wallet, ref.watch(walletsStateProvider).walletsList!);
        },
      ),
    );
  }

  _buildShape() {
    return RoundedRectangleBorder(
        side: BorderSide(color: ColorsManager.greyTextColor, width: 1.sp),
        borderRadius: BorderRadius.circular(10.r));
  }

  _buildTrailing() {
    return BlocBuilder<CurrenciesCubit, CurrenciesState>(
        builder: (context, state) {
      return widget.currency.isSelected ?? false
          ? SizedBox(
              width: 20.sp,
              height: 20.sp,
              child: Image.asset(AssetsManager.check),
            )
          : Container(
              width: 20.sp,
              height: 20.sp,
              decoration: const ShapeDecoration(
                shape: OvalBorder(side: BorderSide(width: 1)),
              ),
            );
    });
  }

  _buildLeading() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50.r),
        child: CustomCachedImage(
            image: FlagsManager().flagPicker(widget.currency.code),
            fit: BoxFit.fill,
            width: 20.sp,
            height: 20.sp));
  }

  _buildTitle() {
    return Text(widget.currency.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: getSemiBoldStyle(fontSize: 15.sp, color: ColorsManager.black));
  }

  _buildSubtitle() {
    return Padding(
      padding: EdgeInsets.only(top: 8.sp),
      child: Text(
        'Symbol: ${widget.currency.symbol}',
        style: getRegularStyle(fontSize: 13.sp, color: ColorsManager.darkGrey),
      ),
    );
  }
}
