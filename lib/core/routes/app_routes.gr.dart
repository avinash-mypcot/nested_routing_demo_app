// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:nested_routing_demo_app/core/widgets/bottom_nav_bar_widget.dart'
    as _i3;
import 'package:nested_routing_demo_app/feature/account/presentation/pages/account_page.dart'
    as _i1;
import 'package:nested_routing_demo_app/feature/cart/presentation/pages/cart_page.dart'
    as _i2;
import 'package:nested_routing_demo_app/feature/explore/presentation/pages/explore_page.dart'
    as _i4;
import 'package:nested_routing_demo_app/feature/favorite/presentation/pages/favorite_page.dart'
    as _i5;
import 'package:nested_routing_demo_app/feature/home/presentation/pages/home_page.dart'
    as _i6;
import 'package:nested_routing_demo_app/feature/nested_check/presentation/pages/nested_check_page.dart'
    as _i7;

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountPage();
    },
  );
}

/// generated route for
/// [_i2.CartPage]
class CartRoute extends _i8.PageRouteInfo<void> {
  const CartRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartPage();
    },
  );
}

/// generated route for
/// [_i3.CommonBottomNavigationPage]
class CommonBottomNavigationRoute extends _i8.PageRouteInfo<void> {
  const CommonBottomNavigationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CommonBottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonBottomNavigationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.CommonBottomNavigationPage();
    },
  );
}

/// generated route for
/// [_i4.ExplorePage]
class ExploreRoute extends _i8.PageRouteInfo<void> {
  const ExploreRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.ExplorePage();
    },
  );
}

/// generated route for
/// [_i5.FavoritePage]
class FavoriteRoute extends _i8.PageRouteInfo<void> {
  const FavoriteRoute({List<_i8.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.FavoritePage();
    },
  );
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomePage();
    },
  );
}

/// generated route for
/// [_i7.NestedCheckPage]
class NestedCheckRoute extends _i8.PageRouteInfo<void> {
  const NestedCheckRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NestedCheckRoute.name,
          initialChildren: children,
        );

  static const String name = 'NestedCheckRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.NestedCheckPage();
    },
  );
}
