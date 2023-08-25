part of values;

class AppTheme {
  static ThemeData theme = ThemeData(
    colorScheme: colorScheme,
    // textTheme: ,
    useMaterial3: true,
  );

  static ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    primary: Colors.blue,

    // secondary: AppColors.primaryColor,
    // background: AppColors.backGroundColor,
    // surface: Color(0xFF121212),
    // onBackground: AppColors.primaryColor,
    // error: _lightFillColor,
    // onError: _lightFillColor,
    // onPrimary: _lightFillColor,
    // onSecondary: Color(0xFF322942),
    // onSurface: Color(0xFF241E30),
    // brightness: Brightness.dark,
  );

  static final TextTheme textTheme = TextTheme(
      // displayLarge: TextStyles.headline1, //deprecated headline 1 now displayLarge
      // displayMedium:
      //     TextStyles.headline2, //deprecated headline 2 now displayMedium
      // displaySmall: TextStyles.headline3, //deprecated headline 3 now displaySmall
      // headlineMedium:
      //     TextStyles.headline4, //deprecated headline 4 now headlineMedium
      // headlineSmall:
      //     TextStyles.headline5, //deprecated headline 5 now headlineSmall
      // titleLarge: TextStyles.headline6, //deprecated headline 6 now titleLarge
      // titleMedium: TextStyles.subtitle1, //deprecated subtitle1 now titleMedium
      // titleSmall: TextStyles.subtitle2, //deprecated subtitle2 now titleSmall
      // bodyLarge: TextStyles.bodyText1, //deprecated bodyText1 now bodyLarge
      // bodyMedium: TextStyles.bodyText2, //deprecated bodyText2 now bodyMedium
      // labelLarge: TextStyles.buttonLight, //deprecated button now labelLarge
      // bodySmall: TextStyles.caption, //deprecated caption now displayLarge
      );
}
