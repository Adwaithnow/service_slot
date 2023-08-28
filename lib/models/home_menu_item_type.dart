class MenuItemType {
  MenuItemType({
    required this.title,
    required this.icon,
    required this.value,
  });
  final String title;
  final String icon;
  final String value;
  // final VoidCallback onTap;
}

class HomeScreenItems {
  static List<MenuItemType> menuItems = [
    MenuItemType(
      title: "Plumbing",
      value: "plumbing",
      icon: "assets/icons/icons8-plumbing-100.png",
    ),
    MenuItemType(
      title: "Repairing",
      icon: "assets/icons/icons8-repair-100.png",
      value: "repairing",
    ),
    MenuItemType(
      title: "Electrical",
      icon: "assets/icons/icons8-electrical-100.png",
      value: "electrical",
    ),
    MenuItemType(
      title: "Carpentry",
      icon: "assets/icons/icons8-grinding-machine-100.png",
      value: "carpentry",
    ),
    MenuItemType(
      title: "Cleaning",
      icon: "assets/icons/icons8-cleaning-100.png",
      value: "cleaning",
    ),
    MenuItemType(
      title: "Painting",
      icon: "assets/icons/icons8-painting-100.png",
      value: "painting",
    ),
    MenuItemType(
      title: "Moving",
      icon: "assets/icons/icons8-luggage-trolley-100.png",
      value: "moving",
    ),
    MenuItemType(
      title: "Handyman",
      icon: "assets/icons/icons8-toolbox-100.png",
      value: "handyman",
    ),
  ];
}
