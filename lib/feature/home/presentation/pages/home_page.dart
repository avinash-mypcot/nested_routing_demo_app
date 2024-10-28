import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.gr.dart';
import 'package:nested_routing_demo_app/core/theme/text_styles.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              "Home Page",
              style: kTextStyleGilroy300.copyWith(),
            ),
            ElevatedButton(
                onPressed: () {
                  // AutoRouter.of(context).push(const NestedCheckRoute());
                  // final router =
                  //     context.innerRouterOf<StackRouter>(HomeRoute.name);
                  // router?.push(const NestedCheckRoute());
                  context.pushRoute(const NestedCheckRoute());
                },
                child: const Text("Go to next page")),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
