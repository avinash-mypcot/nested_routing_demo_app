import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_routing_demo_app/core/routes/app_routes.gr.dart';
import 'core/blocs/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'core/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [BlocProvider(create: (context) => BottomNavBloc())],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: _appRouter.config(
                // deepLinkTransformer: (uri) {
                //   debugPrint(
                //       "${uri}s");
                //   if (uri.path.contains('/home')) {
                //     return SynchronousFuture(
                //       uri.replace(path: uri.path.replaceFirst('/home', '')),
                //     );
                //   }
                //   return SynchronousFuture(uri);
                // },
                deepLinkBuilder: (deepLink) {
                  log("${deepLink.path}");

                  // Handle deep links here
                  if (deepLink.path.startsWith('/home')) {
                    return const DeepLink([HomeRoute()]); // Navigate to Home
                  } else if (deepLink.path.startsWith('/account')) {
                    return const DeepLink(
                        [AccountRoute()]); // Navigate to Account
                  } else if (deepLink.path.startsWith('/cart')) {
                    // Extract the numeric part after '/cart'
                    final idString =
                        deepLink.path.replaceFirst('/cart', '').trim();
                    final id = int.tryParse(idString) ??
                        0; // Parse the ID, default to 0 if invalid

                    return DeepLink([
                      const CartWrapperRoute(),
                      CartDetailRoute(id: id),
                    ]);
                  }
                  return deepLink;
                },
              ),
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
            ),
          );
        });
  }
}
