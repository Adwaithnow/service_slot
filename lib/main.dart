import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/theme/values.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(deepLinkBuilder: (deepLink) {
        // if (deepLink.path.startsWith('/SignUpScreen')) {
        //   // continute with the platfrom link
        //   return const DeepLink([SignUpScreen()]);
        // } else {
        return DeepLink([RoueInfoScreen(params: deepLink.path)]);
        // or DeepLink.path('/')
        // or DeepLink([HomeRoute()])
        // }
      }),
      // routerDelegate: appRouter.delegate(),
      // routeInformationParser: appRouter.defaultRouteParser(),
      // backButtonDispatcher: RootBackButtonDispatcher(),
      theme: AppTheme.theme,
    );
  }
}
