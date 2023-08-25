import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_slot/models/home_menu_item_type.dart';
import 'package:service_slot/theme/values.dart';
import 'package:service_slot/utils/utils.dart';
import 'package:service_slot/widgets/home/home_grid_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MenuItemType> menuItems = [
    MenuItemType(
      title: "Plumbing",
      icon: "assets/icons/icons8-plumbing-100.png",
      onTap: () {},
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: Container(
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
                    "Halid Muhammad",
                    style: TextStyles.appBarUsername.copyWith(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      // backgroundColor: AppColors.primary,
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

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.calendar),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          label: 'Profile',
        ),
      ],
    );
  }
}
