import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/models/home_menu_item_type.dart';
import 'package:service_slot/routes/auto_router.gr.dart';
import 'package:service_slot/theme/values.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/home/common/custom_bottom_navigation_bar.dart';
import 'package:service_slot/widgets/home/home_grid_tile_widget.dart';

@RoutePage(name: "HomeScreen")
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<MenuItemType> menuItems;
  void initMenuItems(BuildContext context) {
    menuItems = [
      MenuItemType(
        title: "Plumbing",
        icon: "assets/icons/icons8-plumbing-100.png",
        onTap: () {
          AutoRouter.of(context).push(const AppointmentBookingScreen());
        },
      ),
      MenuItemType(
        title: "Repairing",
        icon: "assets/icons/icons8-repair-100.png",
        onTap: () {},
      ),
      MenuItemType(
        title: "Electrical",
        icon: "assets/icons/icons8-electrical-100.png",
        onTap: () {},
      ),
      MenuItemType(
        title: "Carpentry",
        icon: "assets/icons/icons8-grinding-machine-100.png",
        onTap: () {},
      ),
      MenuItemType(
        title: "Cleaning",
        icon: "assets/icons/icons8-cleaning-100.png",
        onTap: () {},
      ),
      MenuItemType(
        title: "Painting",
        icon: "assets/icons/icons8-plumbing-100.png",
        onTap: () {},
      ),
      MenuItemType(
        title: "Moving",
        icon: "assets/icons/icons8-luggage-trolley-100.png",
        onTap: () {},
      ),
      MenuItemType(
        title: "Handyman",
        icon: "assets/icons/icons8-toolbox-100.png",
        onTap: () {},
      ),
    ];
  }

  @override
  void initState() {
    initMenuItems(context);
    // TODO: implement initState
    super.initState();
  }

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
          itemCount: menuItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return HomeGridTile(
              menuItem: menuItems[index],
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
