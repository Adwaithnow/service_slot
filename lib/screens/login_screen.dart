import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/widgets/home/common/custom_app_bar.dart';

@RoutePage(name: 'LoginScreen')
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Login'),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).replace(const HomeScreen());
              },
              child: const Text("Go")),
        ],
      ),
    );
  }
}
