import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("explore Page",style: kTextStyleGilroy300.copyWith(),),
      ),
    );
  }
}