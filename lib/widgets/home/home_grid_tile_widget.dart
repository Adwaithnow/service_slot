import 'package:flutter/material.dart';
import 'package:service_slot/models/home_menu_item_type.dart';

class HomeGridTile extends StatelessWidget {
  const HomeGridTile({
    super.key,
    required this.menuItem,
    required this.cardColor,
    required this.onTap,
  });

  final MenuItemType menuItem;
  final Color cardColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(menuItem.icon),
              Text(menuItem.title),
            ],
          ),
        ),
      ),
    );
  }
}
