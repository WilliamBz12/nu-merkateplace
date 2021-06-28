import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../../features/home/pages/home_page.dart';
import '../../features/purchase/pages/purchase_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, path: '/home', initial: true),
    CustomRoute(
      page: PurchasePage,
      path: '/offer',
    ),
  ],
)
class $AppRouter {}
