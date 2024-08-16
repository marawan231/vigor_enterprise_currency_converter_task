import 'package:flutter/material.dart';
import 'package:vigor_enterprise_currency_converter_task/core/navigator/navigator.dart';

class Utils {
  static void showErrorSnackBar({required String message}) {
    ScaffoldMessenger.of(Go.navigatorKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
