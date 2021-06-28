import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:numarketplace/app/features/offer/pages/offer_page.dart';

import 'features/home/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, path: '/home', initial: true),
    CustomRoute(
      page: OfferPage,
      path: '/offer',
      durationInMilliseconds: 3000,
      reverseDurationInMilliseconds: 3000,
    ),
  ],
)
class $AppRouter {}
