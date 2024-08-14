import 'package:flutter/material.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/ui/screens/home_view.dart';
import 'package:vigor_enterprise_currency_converter_task/features/splash/presentation/ui/screens/splash_screen.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

/// `RouterGenerator` is a class responsible for generating routes in the application.
///
/// It contains a static instance of `PostsCubit` which is initialized in the constructor using the `getIt` function.
/// It also contains a static instance of `PageRouterBuilder` used for building routes.
class RouterGenerator {
  RouterGenerator() {
    // postsCubit = getIt<PostsCubit>();
  }

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(
          const SplashView(),
          settings: settings,
        );

      case NamedRoutes.home:
        return _pageRouter.build(
          const HomeView(),
          settings: settings,
        );
    }
  }
}
