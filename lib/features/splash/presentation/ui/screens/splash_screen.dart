import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigor_enterprise_currency_converter_task/core/navigator/named_routes.dart';
import 'package:vigor_enterprise_currency_converter_task/core/resources/assets_manager.dart';
import 'package:vigor_enterprise_currency_converter_task/core/theming/colors.dart';

import '../../../../../core/navigator/navigator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  void _goNext() async {
    _timer.cancel();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    Go.offAllNamed(NamedRoutes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: Center(
          child: Image.asset(AssetsManager.appLogo,
              width: 300.sp, height: 300.sp)),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
