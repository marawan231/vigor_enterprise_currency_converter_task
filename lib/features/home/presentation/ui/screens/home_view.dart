import 'package:flutter/material.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/flags.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_app_bar.dart';
import 'package:vigor_enterprise_currency_converter_task/core/global_widgets/custom_cached_image.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final FlagsManager flagsManager = FlagsManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Converter',
      ),
      body: Column(
        children: [
          CustomCachedImage(
            image: flagsManager.flagPicker('sa'),
            width: 14,
            height: 14,
          ),
          ElevatedButton(onPressed: () {
            
          }, child: Text('Convert')),
        ],
      ),
    );
  }
}
