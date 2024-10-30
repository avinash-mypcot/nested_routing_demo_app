import 'package:auto_route/auto_route.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CommonBottomNavigationWrapperRoute.page,
          initial: true,
          path: '/',
          children: [
            AutoRoute(page: HomeWrapperRoute.page, initial: true, children: [
              AutoRoute(
                page: HomeRoute.page,
                initial: true,
                path: 'home',
              ),
              AutoRoute(
                page: NestedCheckRoute.page,
                path: 'nested-check',
              ),
            ]),
            AutoRoute(
              page: ExploreRoute.page,
              path: 'explore',
            ),
            AutoRoute(page: CartWrapperRoute.page, children: [
              AutoRoute(page: CartRoute.page, path: 'cart', initial: true),
              AutoRoute(
                page: CartDetailRoute.page,
                path: 'cart/:id',
              ),
            ]),
            AutoRoute(
              page: FavoriteRoute.page,
              path: 'favorite',
            ),
            AutoRoute(
              page: AccountRoute.page,
              path: 'account',
            ),
          ],
        ),
      ];
}
