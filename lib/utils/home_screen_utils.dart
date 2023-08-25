part of utils;

class HomeScreenUtils {
  static String getGreetingsMessage() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  static List<Color> cardBgColors = [
    const Color(0xFFEEF2FF),
    const Color(0xFFFCEDF5),
    const Color(0xFFF0FDFA),
    const Color.fromARGB(255, 253, 253, 240),
  ];
  static Color getCardColor(int index) {
    int computedIndex = index % cardBgColors.length;
    return cardBgColors[computedIndex];
  }
}