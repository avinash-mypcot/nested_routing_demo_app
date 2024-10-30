// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:nested_routing_demo_app/core/widgets/bottom_nav_bar_widget.dart'
    as _i5;
import 'package:nested_routing_demo_app/feature/account/presentation/pages/account_page.dart'
    as _i1;
import 'package:nested_routing_demo_app/feature/cart/presentation/pages/cart_page.dart'
    as _i3;
import 'package:nested_routing_demo_app/feature/cart_detail/presentation/pages/cart_detail_page.dart'
    as _i2;
import 'package:nested_routing_demo_app/feature/cart_wrapper/presentation/pages/cart_wrapper_page.dart'
    as _i4;
import 'package:nested_routing_demo_app/feature/explore/presentation/pages/explore_page.dart'
    as _i6;
import 'package:nested_routing_demo_app/feature/favorite/presentation/pages/favorite_page.dart'
    as _i7;
import 'package:nested_routing_demo_app/feature/home/presentation/pages/home_page.dart'
    as _i8;
import 'package:nested_routing_demo_app/feature/home_wrapper/presentation/pages/home_wrapper_page.dart'
    as _i9;
import 'package:nested_routing_demo_app/feature/nested_check/presentation/pages/nested_check_page.dart'
    as _i10;

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i11.PageRouteInfo<void> {
  const AccountRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountPage();
    },
  );
}

/// generated route for
/// [_i2.CartDetailPage]
class CartDetailRoute extends _i11.PageRouteInfo<CartDetailRouteArgs> {
  CartDetailRoute({
    _i12.Key? key,
    required int id,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          CartDetailRoute.name,
          args: CartDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CartDetailRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CartDetailRouteArgs>(
          orElse: () => CartDetailRouteArgs(id: pathParams.getInt('id')));
      return _i2.CartDetailPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class CartDetailRouteArgs {
  const CartDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i12.Key? key;

  final int id;

  @override
  String toString() {
    return 'CartDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.CartPage]
class CartRoute extends _i11.PageRouteInfo<void> {
  const CartRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.CartPage();
    },
  );
}

/// generated route for
/// [_i4.CartWrapperPage]
class CartWrapperRoute extends _i11.PageRouteInfo<void> {
  const CartWrapperRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CartWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.CartWrapperPage();
    },
  );
}

/// generated route for
/// [_i5.CommonBottomNavigationWrapperPage]
class CommonBottomNavigationWrapperRoute extends _i11.PageRouteInfo<void> {
  const CommonBottomNavigationWrapperRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CommonBottomNavigationWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonBottomNavigationWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.CommonBottomNavigationWrapperPage();
    },
  );
}

/// generated route for
/// [_i6.ExplorePage]
class ExploreRoute extends _i11.PageRouteInfo<void> {
  const ExploreRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.ExplorePage();
    },
  );
}

/// generated route for
/// [_i7.FavoritePage]
class FavoriteRoute extends _i11.PageRouteInfo<void> {
  const FavoriteRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.FavoritePage();
    },
  );
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomePage();
    },
  );
}

/// generated route for
/// [_i9.HomeWrapperPage]
class HomeWrapperRoute extends _i11.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.HomeWrapperPage();
    },
  );
}

/// generated route for
/// [_i10.NestedCheckPage]
class NestedCheckRoute extends _i11.PageRouteInfo<void> {
  const NestedCheckRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NestedCheckRoute.name,
          initialChildren: children,
        );

  static const String name = 'NestedCheckRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.NestedCheckPage();
    },
  );
}
