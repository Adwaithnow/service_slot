import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/utils/utils.dart';
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
    List<bool> activePath = HomeScreenUtils.containsBookingHistoryTabItem(
        routeNames: ["HomeScreen", "BookingHistoryTab", "ProfileScreen"],
        currentpath: context.router.currentPath);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AutoRouter(
              key: innerRouterKey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationBarItem(
                icon: CupertinoIcons.home,
                refreshAction: () {},
                isActive:
                    activePath[0] || context.topRoute.name == 'MainScreen',
                onPressed: () {
                  AutoRouter.of(context).push(const HomeScreen());
                  setState(() {});
                },
                label: 'Home',
              ),
              CustomBottomNavigationBarItem(
                icon: CupertinoIcons.clock,
                isActive: activePath[1],
                // isActive: context.topRouteMatch.name == HistoryTab.name,
                label: 'History',
                onPressed: () {
                  AutoRouter.of(context).push(const HistoryTab());
                  setState(() {});
                },
              ),
              CustomBottomNavigationBarItem(
                icon: CupertinoIcons.profile_circled,
                // isActive: context.topRoute.name == ProfileScreen.name,
                isActive: activePath[2],
                label: 'Profile',
                onPressed: () {
                  AutoRouter.of(context).push(const ProfileScreen());
                  setState(() {});
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
