// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:numarketplace/app/features/home/home_page.dart' as _i3;
import 'package:numarketplace/app/features/offer/pages/offer_page.dart' as _i4;
import 'package:numarketplace/app/shared/models/offer_model.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    OfferRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OfferRouteArgs>();
          return _i4.OfferPage(key: args.key, offer: args.offer);
        },
        durationInMilliseconds: 3000,
        reverseDurationInMilliseconds: 3000,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i1.RouteConfig(HomeRoute.name, path: '/home'),
        _i1.RouteConfig(OfferRoute.name, path: '/offer')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home');

  static const String name = 'HomeRoute';
}

class OfferRoute extends _i1.PageRouteInfo<OfferRouteArgs> {
  OfferRoute({_i2.Key? key, required _i5.OfferModel offer})
      : super(name,
            path: '/offer', args: OfferRouteArgs(key: key, offer: offer));

  static const String name = 'OfferRoute';
}

class OfferRouteArgs {
  const OfferRouteArgs({this.key, required this.offer});

  final _i2.Key? key;

  final _i5.OfferModel offer;
}
