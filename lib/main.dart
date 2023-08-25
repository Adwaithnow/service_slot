import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.dart';
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
      // routerConfig: appRouter.config(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      // backButtonDispatcher: RootBackButtonDispatcher(),
      theme: AppTheme.theme,
    );
  }
}
