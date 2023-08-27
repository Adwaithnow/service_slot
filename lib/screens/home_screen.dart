import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/models/home_menu_item_type.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/theme/values.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/home/home_grid_tile_widget.dart';

@RoutePage(name: "HomeScreen")
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: const HomeBarWidget(
        username: "Halid Muhammad",
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          itemCount: HomeScreenItems.menuItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return HomeGridTile(
              menuItem: HomeScreenItems.menuItems[index],
              onTap: () => AutoRouter.of(context).push(
                HistoryTab(
                  children: [
                    AppointmentBookingScreen(
                        menuItemType: HomeScreenItems.menuItems[index])
                  ],
                ),
              ),
              cardColor: HomeScreenUtils.getCardColor(index),
            );
          },
        ),
      ),
    );
  }
}

class HomeBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeBarWidget({
    super.key,
    required this.username,
  });
  final String username;
  @override
  Size get preferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                HomeScreenUtils.getGreetingsMessage(),
                style: TextStyles.appBarGreeting.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                username,
                style: TextStyles.appBarUsername.copyWith(
                  color: Colors.white,
                  height: 1.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
