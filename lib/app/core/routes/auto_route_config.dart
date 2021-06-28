import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../../features/home/pages/home_page.dart';
import '../../features/offer/pages/offer_page.dart';

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
