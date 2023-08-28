// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:service_slot/models/home_menu_item_type.dart' as _i13;
import 'package:service_slot/routes/auto_router.dart' as _i4;
import 'package:service_slot/screens/about_screen.dart' as _i1;
import 'package:service_slot/screens/appointment_booking_screen.dart' as _i2;
import 'package:service_slot/screens/booking_history_screen.dart' as _i3;
import 'package:service_slot/screens/home_screen.dart' as _i5;
import 'package:service_slot/screens/login_screen.dart' as _i6;
import 'package:service_slot/screens/main_screeen.dart' as _i7;
import 'package:service_slot/screens/profile_screen.dart' as _i8;
import 'package:service_slot/screens/signup_screen.dart' as _i9;
import 'package:service_slot/screens/splash_screen.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AboutScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    AppointmentBookingScreen.name: (routeData) {
      final args = routeData.argsAs<AppointmentBookingScreenArgs>(
          orElse: () => const AppointmentBookingScreenArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AppointmentBookingScreen(
          key: args.key,
          menuItemType: args.menuItemType,
        ),
      );
    },
    BookingHistoryScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BookingHistoryScreen(),
      );
    },
    HistoryTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HistoryTabs(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreeen(),
      );
    },
    SignUpScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUpScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutScreen extends _i11.PageRouteInfo<void> {
  const AboutScreen({List<_i11.PageRouteInfo>? children})
      : super(
          AboutScreen.name,
          initialChildren: children,
        );

  static const String name = 'AboutScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppointmentBookingScreen]
class AppointmentBookingScreen
    extends _i11.PageRouteInfo<AppointmentBookingScreenArgs> {
  AppointmentBookingScreen({
    _i12.Key? key,
    _i13.MenuItemType? menuItemType,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AppointmentBookingScreen.name,
          args: AppointmentBookingScreenArgs(
            key: key,
            menuItemType: menuItemType,
          ),
          initialChildren: children,
        );

  static const String name = 'AppointmentBookingScreen';

  static const _i11.PageInfo<AppointmentBookingScreenArgs> page =
      _i11.PageInfo<AppointmentBookingScreenArgs>(name);
}

class AppointmentBookingScreenArgs {
  const AppointmentBookingScreenArgs({
    this.key,
    this.menuItemType,
  });

  final _i12.Key? key;

  final _i13.MenuItemType? menuItemType;

  @override
  String toString() {
    return 'AppointmentBookingScreenArgs{key: $key, menuItemType: $menuItemType}';
  }
}

/// generated route for
/// [_i3.BookingHistoryScreen]
class BookingHistoryScreen extends _i11.PageRouteInfo<void> {
  const BookingHistoryScreen({List<_i11.PageRouteInfo>? children})
      : super(
          BookingHistoryScreen.name,
          initialChildren: children,
        );

  static const String name = 'BookingHistoryScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HistoryTabs]
class HistoryTab extends _i11.PageRouteInfo<void> {
  const HistoryTab({List<_i11.PageRouteInfo>? children})
      : super(
          HistoryTab.name,
          initialChildren: children,
        );

  static const String name = 'HistoryTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreen extends _i11.PageRouteInfo<void> {
  const HomeScreen({List<_i11.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginScreen]
class LoginScreen extends _i11.PageRouteInfo<void> {
  const LoginScreen({List<_i11.PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainScreen]
class MainScreen extends _i11.PageRouteInfo<void> {
  const MainScreen({List<_i11.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreeen]
class ProfileScreen extends _i11.PageRouteInfo<void> {
  const ProfileScreen({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileScreen.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignUpScreen]
class SignUpScreen extends _i11.PageRouteInfo<void> {
  const SignUpScreen({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashScreen]
class SplashScreen extends _i11.PageRouteInfo<void> {
  const SplashScreen({List<_i11.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
