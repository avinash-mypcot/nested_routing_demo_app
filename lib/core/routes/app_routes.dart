import 'package:auto_route/auto_route.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(
        //   page: NestedCheckRoute.page,
        //   path: '/nested-check',
        // ),
        AutoRoute(
            page: CommonBottomNavigationRoute.page,
            initial: true,
            children: [
              AutoRoute(
                  page: HomeRoute.page,
                  initial: true,
                  path: 'home',
                  children: [
                    AutoRoute(
                        page: NestedCheckRoute.page,
                        path: 'nested-check',
                        initial: true)
                  ]),
              AutoRoute(
                page: ExploreRoute.page,
                path: 'explore',
              ),
              AutoRoute(
                page: CartRoute.page,
                path: 'cart',
              ),
              AutoRoute(
                page: FavoriteRoute.page,
                path: 'favorite',
              ),
              AutoRoute(
                page: AccountRoute.page,
                path: 'account',
              ),
            ])
      ];
}
