import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

@RoutePage()
class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

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
