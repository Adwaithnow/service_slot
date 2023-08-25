import 'package:auto_route/auto_route.dart';
import 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainScreen.page,
          path: '/',
          children: [
            AutoRoute(
              initial: true,
              page: HomeScreen.page,
              path: 'Home',
            ),
            AutoRoute(
              page: BookingHistoryScreen.page,
              path: 'BookingHistoryScreen',
              children: [
                AutoRoute(
                  page: AppointmentBookingScreen.page,
                  path: 'AppointmentBookingScreen',
                ),
              ],
            ),
            AutoRoute(
              page: ProfileScreen.page,
              path: 'ProfileScreen',
            ),
          ],
        ),
      ];
}
