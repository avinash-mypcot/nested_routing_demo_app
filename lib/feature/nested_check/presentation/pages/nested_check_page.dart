import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

@RoutePage()
class NestedCheckPage extends StatelessWidget {
  const NestedCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Nested Page",
          style: kTextStyleGilroy300.copyWith(),
        ),
      ),
    );
  }
}
