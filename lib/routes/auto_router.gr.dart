// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:service_slot/screens/appointment_booking_screen.dart' as _i1;
import 'package:service_slot/screens/booking_history_screen.dart' as _i2;
import 'package:service_slot/screens/home_screen.dart' as _i3;
import 'package:service_slot/screens/main_screeen.dart' as _i4;
import 'package:service_slot/screens/profile_screen.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AppointmentBookingScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppointmentBookingScreen(),
      );
    },
    BookingHistoryScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BookingHistoryScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreeen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppointmentBookingScreen]
class AppointmentBookingScreen extends _i6.PageRouteInfo<void> {
  const AppointmentBookingScreen({List<_i6.PageRouteInfo>? children})
      : super(
          AppointmentBookingScreen.name,
          initialChildren: children,
        );

  static const String name = 'AppointmentBookingScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BookingHistoryScreen]
class BookingHistoryScreen extends _i6.PageRouteInfo<void> {
  const BookingHistoryScreen({List<_i6.PageRouteInfo>? children})
      : super(
          BookingHistoryScreen.name,
          initialChildren: children,
        );

  static const String name = 'BookingHistoryScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i6.PageRouteInfo<void> {
  const HomeScreen({List<_i6.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainScreen]
class MainScreen extends _i6.PageRouteInfo<void> {
  const MainScreen({List<_i6.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfileScreeen]
class ProfileScreen extends _i6.PageRouteInfo<void> {
  const ProfileScreen({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileScreen.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
