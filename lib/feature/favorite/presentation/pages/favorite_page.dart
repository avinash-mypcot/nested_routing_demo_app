import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

import '../../../../core/blocs/bottom_nav_bloc/bottom_nav_bloc.dart';

@RoutePage()
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    super.initState();
     context
        .read<BottomNavBloc>()
        .add(ChangeTab(index: 3));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorite Page",
          style: kTextStyleGilroy300.copyWith(),
        ),
      ),
    );
  }
}
