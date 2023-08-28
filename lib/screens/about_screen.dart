import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/widgets/common/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage(name: 'AboutScreen')
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "About"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextButton(
              onPressed: () => launchUrl(
                  Uri.parse(
                    'https://icons8.com/license',
                  ),
                  mode: LaunchMode.externalApplication),
              child: const Text("Icons by Icons8"),
            )
          ],
        ),
      ),
    );
  }
}
