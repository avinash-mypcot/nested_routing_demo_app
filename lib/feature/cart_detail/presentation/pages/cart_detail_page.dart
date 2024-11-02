import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

@RoutePage()
class CartDetailPage extends StatelessWidget {
  const CartDetailPage({super.key, @PathParam('id') required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text(
          "Cart detail: $id",
          style: kTextStyleGilroy400.copyWith(),
        ),
      ),
    );
  }
}
