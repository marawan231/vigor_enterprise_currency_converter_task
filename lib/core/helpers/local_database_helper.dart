import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';

class CurrenciesManager {
  static const _key = 'currency';

  // Future<void> addCurrency(currency) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final List<String> currencies = prefs.getStringList(_key) ?? [];

  //   currencies.add(json.encode(currency.toJson()));

  //   await prefs.setStringList(_key, currencies);
  // }

  // Future<void> removePost(post) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final List<String> posts = prefs.getStringList(_key) ?? [];

  //   posts.removeWhere((postJson) {
  //     final postData = json.decode(postJson);
  //     return postData['title'] == post.title &&
  //         postData['isCompleted'] == post.isFavourite;
  //   });

  //   await prefs.setStringList(_key, posts);
  // }

  Future<List<CurrencyEntity>> getCurrencies() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> currencies = prefs.getStringList(_key) ?? [];

    return currencies.map((currencyJson) {
      final currencyData = json.decode(currencyJson);
      return CurrencyEntity(
        name: currencyData['name'],
        symbol: currencyData['symbol'],
        code: currencyData['code'],
      );
    }).toList();
    //
  }

  //save posts
  Future<void> saveCurrencies(List<dynamic> currencies) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> curreincesJson =
        currencies.map((currency) => json.encode(currency.toJson())).toList();
    await prefs.setStringList(_key, curreincesJson);
  }

  // //remove favourite post
  // Future<void> removeFavouritePost(post) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final List<String> posts = prefs.getStringList(_key) ?? [];

  //   final updatedPosts = posts.map((postJson) {
  //     final postData = json.decode(postJson);
  //     if (postData['title'] == post.title) {
  //       postData['isFavourite'] = false;
  //     }
  //     return json.encode(postData);
  //   }).toList();

  //   await prefs.setStringList(_key, updatedPosts);
  // }

  //remove all posts
  // Future<void> removeAllPosts() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.remove(_key);
  //   showErrorSnackBar(
  //       message: 'cache cleared', context: Go.navigatorKey.currentContext!);
  // }
}
