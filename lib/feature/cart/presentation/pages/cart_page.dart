import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cart Page",style: kTextStyleGilroy300.copyWith(),),
      ),
    );
  }
}