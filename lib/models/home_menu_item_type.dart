import 'dart:ui';

class MenuItemType {
  MenuItemType({
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final String icon;
  final VoidCallback onTap;
}
