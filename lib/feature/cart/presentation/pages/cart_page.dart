import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.gr.dart';
import 'package:nested_routing_demo_app/core/theme/colors.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';
import '../../../../core/blocs/bottom_nav_bloc/bottom_nav_bloc.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    context.read<BottomNavBloc>().add(ChangeTab(index: 2));
    log("in cart");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Text(
              "Cart Page",
              style: kTextStyleGilroy400.copyWith(),
            ),
          ),
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).push(CartDetailRoute(id: 12));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kColorPrimary,
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                "Cart detail",
                style: kTextStyleGilroy400.copyWith(fontSize: 18.sp),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
