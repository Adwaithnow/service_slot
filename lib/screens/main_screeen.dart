import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/widgets/home/common/custom_bottom_navigation_bar.dart';

@RoutePage(name: "MainScreen")
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<AutoRouterState> innerRouterKey = GlobalKey<AutoRouterState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.topRoute.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: AutoRouter(key: innerRouterKey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationBarItem(
                icon: CupertinoIcons.home,
                isActive: (context.topRoute.name == HomeScreen.name) ||
                    context.topRoute.name == 'MainScreen',
                onPressed: () {
                  AutoRouter.of(context).push(const HomeScreen());
                },
                label: 'Home',
              ),
              CustomBottomNavigationBarItem(
                icon: CupertinoIcons.calendar,
                isActive: context.topRoute.name == BookingHistoryScreen.name,
                label: 'History',
                onPressed: () {
                  AutoRouter.of(context).push(const BookingHistoryScreen());
                },
              ),
              CustomBottomNavigationBarItem(
                icon: CupertinoIcons.profile_circled,
                isActive: context.topRoute.name == ProfileScreen.name,
                label: 'Profile',
                onPressed: () {
                  AutoRouter.of(context).push(const ProfileScreen());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
