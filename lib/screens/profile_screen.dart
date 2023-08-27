import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/widgets/home/common/custom_app_bar.dart';

@RoutePage(name: "ProfileScreen")
class ProfileScreeen extends StatelessWidget {
  const ProfileScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Profile"),
    );
  }
}
