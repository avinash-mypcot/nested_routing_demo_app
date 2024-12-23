import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

import '../../../../core/blocs/bottom_nav_bloc/bottom_nav_bloc.dart';


@RoutePage()
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  void initState() {
    super.initState();
    context.read<BottomNavBloc>().add(ChangeTab(index: 4));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Account Page",style: kTextStyleGilroy300.copyWith(),),
      ),
    );
  }
}