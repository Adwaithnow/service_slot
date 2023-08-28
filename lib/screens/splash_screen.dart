import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';

@RoutePage(name: 'SplashScreen')
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.replaceRoute(const LoginScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
